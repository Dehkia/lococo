import "./Header.css";
import { Link } from "react-router-dom";

const Header = () => {
  return (
    <header className="Header">
      <div className="Header-nav">
        <Link to={"/"} style={{ textDecoration: "none", color: "inherit" }}>
          로코코
        </Link>
        <Link to={"/tip"} style={{ textDecoration: "none", color: "inherit" }}>
          커뮤니티
        </Link>
        <Link
          to={"/skill"}
          style={{ textDecoration: "none", color: "inherit" }}
        >
          스킬
        </Link>
      </div>

      <hr></hr>
    </header>
  );
};

export default Header;
