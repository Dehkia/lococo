import axios from "axios";
import React, { useState, useEffect } from "react";

const API_KEY =
  "bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsIng1dCI6IktYMk40TkRDSTJ5NTA5NWpjTWk5TllqY2lyZyIsImtpZCI6IktYMk40TkRDSTJ5NTA5NWpjTWk5TllqY2lyZyJ9.eyJpc3MiOiJodHRwczovL2x1ZHkuZ2FtZS5vbnN0b3ZlLmNvbSIsImF1ZCI6Imh0dHBzOi8vbHVkeS5nYW1lLm9uc3RvdmUuY29tL3Jlc291cmNlcyIsImNsaWVudF9pZCI6IjEwMDAwMDAwMDAzMjM3MzQifQ.cOxA0cajp7aTwULOwevlYQo83M33p4v6l2Q0HQDggo7PZ7LE0_njBcTWwN_8ss0aMdZ7GNmUbkV4c2c60WQECCZwKmd-c8kmUa108DYANuRVGQ81recNKUZYBLgMVbLWmUyWTWWpW5HuM4ekEk0YI1B6-OHhPEYgxOjteAGwOP2bSK2w2tuiby4KWZyCmWzvMpbVun36psuIWNXKvNkzwIz8uUEa8wOwV8Av5-iXWn_3OXhm6Qzly--DTZu4REftxL9sp4_7RwZ_7dX7NXleB-YlvV9BEqlX17w52LegDz_iRRUmd2BFwoVAOs76Y864xfh0NtruCT4yB9wfz5z2Qw";

const Notice = () => {
  const [notices, setNotices] = useState([]);

  useEffect(() => {
    getNotice();
  }, []);

  const getNotice = async () => {
    try {
      // api 서버에 요청 보내기
      const response = await axios.get(
        `https://developer-lostark.game.onstove.com/news/notices?type=%EA%B3%B5%EC%A7%80`,
        {
          headers: {
            accept: "application/json",
            authorization: API_KEY,
          },
        }
      );

      // 응답 데이터를 상태에 저장
      const noticeList = response.data.slice(0, 5);
      setNotices(noticeList);

      console.log(noticeList);
    } catch (error) {
      console.error("API 요청 중 오류 발생:", error);
    }
  };

  return (
    <div className="Notice">
      <h2>로스트아크 공지사항</h2>
      {notices.map((notice, index) => (
        <li key={index}>
          <a href={notice.Link}>{notice.Title}</a>
        </li>
      ))}
    </div>
  );
};

export default Notice;
