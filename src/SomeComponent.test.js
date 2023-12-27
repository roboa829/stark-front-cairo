import React from 'react';
import { render, fireEvent } from '@testing-library/react';
import SomeComponent from '../SomeComponent';

test('renders SomeComponent correctly', () => {
  const { getByText } = render(<SomeComponent />);
  expect(getByText(/Click me/i)).toBeInTheDocument();
});

test('handles click event', () => {
  const handleClick = jest.fn();
  const { getByText } = render(<SomeComponent onClick={handleClick} />);
  fireEvent.click(getByText(/Click me/i));
  expect(handleClick).toHaveBeenCalledTimes(1);
});
