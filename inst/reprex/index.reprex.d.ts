/**
 * reprex files 
 * @remixicon/react v4.2.0 - Apache-2.0
 */

import { ComponentType, SVGProps } from 'react';

type AllSVGProps = SVGProps<SVGSVGElement>
type ReservedProps = 'color' | 'size' | 'width' | 'height' | 'fill' | 'viewBox'
interface RemixiconProps extends Pick<AllSVGProps, Exclude<keyof AllSVGProps, ReservedProps>> {
  color?: string;
  size?: number | string;
  children?: never;
}
type RemixiconComponentType = ComponentType<RemixiconProps>;

declare const Ri24HoursFill: RemixiconComponentType;

declare const Ri24HoursLine: RemixiconComponentType;

declare const Ri4kFill: RemixiconComponentType;

declare const Ri4kLine: RemixiconComponentType;

declare const RiAB: RemixiconComponentType;

declare const RiAccountBoxFill: RemixiconComponentType;

declare const RiAccountBoxLine: RemixiconComponentType;

export { type RemixiconComponentType, Ri24HoursFill, Ri24HoursLine, Ri4kFill, Ri4kLine, RiAB, RiAccountBoxFill, RiAccountBoxLine };
