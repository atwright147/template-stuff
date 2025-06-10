---
to: src/components/<%= name %>/<%= name %>.tsx
---
import React, { FC, ReactNode } from 'react';
import styles from './<%= h.changeCase.pascal(name) %>.module.scss';

interface Props {
  children: ReactNode;
}

export const <%= name %>: FC<Props> = ({ children }): JSX.Element => (
  <div
    className={styles.<%= h.changeCase.lcFirst(name) %>}
    data-testid="<%= h.changeCase.lower(name) %>"
  >
    {children}
  </div>
);
