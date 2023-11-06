import axios from "axios";
import React, { useState, useEffect } from "react";
import { useParams } from "react-router-dom";
import API_KEY from "../NeedIgnore";

const CharacterPage = () => {
  const getCharacter = async () => {
    // 검색 버튼을 누르면 입력된 value 가져오고 encoded하기
    let encoded = encodeURI(params.name);

    try {
      // api 서버에 요청 보내기
      const response = await axios.get(
        `https://developer-lostark.game.onstove.com/armories/characters/${encoded}/equipment`,
        {
          headers: {
            accept: "application/json",
            authorization: API_KEY,
          },
        }
      );

      // 응답 데이터를 상태에 저장
      setLoaResponse(response.data);
    } catch (error) {
      console.error("API 요청 중 오류 발생:", error);
    }
  };

  useEffect(() => {
    // 페이지 이동 후 api 호출
    getCharacter();
  }, []);

  const params = useParams();

  const [loaApiResponse, setLoaResponse] = useState(null); // 초기 값은 null로 설정

  // 기본효과,추가효과 없으면 공백
  function getEffectValue(tooltip, elementKey) {
    if (
      tooltip &&
      tooltip[elementKey] &&
      tooltip[elementKey].value &&
      tooltip[elementKey].value.Element_001
    ) {
      return tooltip[elementKey].value.Element_001;
    }
    return "";
  }

  return (
    <div>
      <h2>캐릭터페이지입니다.</h2>
      <p>캐릭터명: {params.name}</p>
      <hr></hr>
      <div>
        {loaApiResponse && (
          <div>
            {loaApiResponse.map((item, index) => (
              <div key={index}>
                <div>
                  아이콘: <img src={item.Icon} alt="아이콘" />
                </div>
                <div>
                  이름: <b>{item.Name}</b>
                </div>
                <div>등급: {item.Grade}</div>
                <div>
                  기본 효과:{" "}
                  <span
                    dangerouslySetInnerHTML={{
                      __html: getEffectValue(
                        JSON.parse(item.Tooltip),
                        "Element_005"
                      ),
                    }}
                  />
                </div>
                <div>
                  추가 효과:{" "}
                  <span
                    dangerouslySetInnerHTML={{
                      __html: getEffectValue(
                        JSON.parse(item.Tooltip),
                        "Element_006"
                      ),
                    }}
                  />
                </div>
              </div>
            ))}
          </div>
        )}
      </div>
    </div>
  );
};

export default CharacterPage;
