import "../style/HeaderComponent.css";
import Input from "../common/Input";
import { Link } from "react-router-dom";

const HeaderComponent = () => {
  return (
    <header className="HeaderComponent">
      <nav>
        <Link to={"http://localhost:3000/write"}>커뮤니티</Link>
        <Link to={"http://localhost:3000/skilldb"}>스킬</Link>
      </nav>
      <Input />
    </header>
  );
};

export default HeaderComponent;

// 스킬이 스킬db 창이고
// 커뮤니티가 post

// 1. 빌드해서
