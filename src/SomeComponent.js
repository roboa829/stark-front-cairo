import styled from 'styled-components';
import React, { memo, useCallback } from 'react';

const StyledDiv = styled.div`
  color: blue;
`;


const SomeComponent = memo(({ onClick }) => {
  const handleClick = useCallback(() => {
    onClick();
  }, [onClick]);

  return (
    <button onClick={handleClick}>Click me</button>
  );
});
