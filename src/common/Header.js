import "./Header.css";
import { Link } from "react-router-dom";

const Header = () => {
  return (
    <header className="Header">
      <nav id="navContainer">
        <div className="navMain">
          <Link to={"/tip"}>운영 팁</Link>
          <Link to={"/skill"}>스킬정보</Link>
        </div>
      </nav>
    </header>
  );
};

export default Header;
