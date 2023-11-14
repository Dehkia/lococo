import "../style/FooterComponent.css";
import React, { useEffect, useState } from "react";

const FooterComponent = () => {
  const [isScrolled, setIsScrolled] = useState(false);

  useEffect(() => {
    // 스크롤 이벤트를 감지하여 페이지가 스크롤될 때마다 상태를 업데이트
    const handleScroll = () => {
      if (window.scrollY > 0) {
        setIsScrolled(true);
      } else {
        setIsScrolled(false);
      }
    };

    window.addEventListener("scroll", handleScroll);

    // 컴포넌트 언마운트 시 이벤트 리스너 제거
    return () => {
      window.removeEventListener("scroll", handleScroll);
    };
  }, []);

  return (
    <footer className={isScrolled ? "scrolled" : ""}>
      <h1>Footer 입니다.</h1>
    </footer>
  );
};

export default FooterComponent;
