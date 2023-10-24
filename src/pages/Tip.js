import { Link } from "react-router-dom";
import Header from "../common/Header";

const Tip = () => {
  return (
    <div className="Tip">
      <Header />
      <h2>정보 | 유저가 알려주는 직업 운영 팁</h2>
      <Link to={"/edit"}>팁 작성</Link>
    </div>
  );
};

export default Tip;
