import Input from "../common/Input";
import Header from "../common/Header";
import Notice from "../common/Notice";
import EventComponent from "../component/EventComponent";
import "../style/Home.css";

const Home = () => {
  return (
    <div className="Home">
      <Header />
      <div className="Home_Content">
        <EventComponent />
        <Notice />
        <Input />
      </div>
    </div>
  );
};

export default Home;
