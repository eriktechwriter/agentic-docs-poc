import React from 'react';
import Logo from '@theme-original/Navbar/Logo';
import type LogoType from '@theme/Navbar/Logo';
import type {WrapperProps} from '@docusaurus/types';

type Props = WrapperProps<typeof LogoType>;

export default function LogoWrapper(props: Props): JSX.Element {
  return (
    <>
      <Logo {...props} />
      <b className="navbar__title navbar__title--custom">
        <span style={{fontWeight: 300}}>Trend Vision One</span>{' '}
        <span style={{fontWeight: 700}}>Online Help Center</span>
      </b>
    </>
  );
}
