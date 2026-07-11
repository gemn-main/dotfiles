
[user@gemn hyprland]$ journalctl -b -1 -p err
Jul 10 20:50:19 gemn kernel: virt/tdx: TDX not supported by the host platform
Jul 10 20:50:19 gemn kernel: usb 1-14: device descriptor read/64, error -110
Jul 10 20:50:19 gemn kernel: usb 1-14: device descriptor read/64, error -110
Jul 10 20:50:19 gemn kernel: usb 1-14: device descriptor read/64, error -110
Jul 10 20:50:19 gemn kernel: usb 1-14: device descriptor read/64, error -110
Jul 10 20:50:19 gemn kernel: usb 1-14: device not accepting address 5, error -71
Jul 10 20:50:19 gemn kernel: usb 1-14: device not accepting address 6, error -71
Jul 10 20:50:19 gemn kernel: usb usb1-port14: unable to enumerate USB device
Jul 10 20:50:19 gemn systemd-modules-load[339]: Failed to find module 'amneziawg'
Jul 10 20:50:19 gemn systemd-modules-load[339]: Failed to find module 'ashmem_linux'
Jul 10 20:50:19 gemn systemd-modules-load[339]: Failed to find module 'binder_linux'
Jul 10 20:50:19 gemn systemd-modules-load[339]: Failed to find module 'vboxpci'
Jul 10 20:50:19 gemn kernel: kvm_amd: CPU 0 isn't AMD or Hygon
Jul 10 20:50:21 gemn libvirtd[591]: Cannot find 'dmidecode' in path: No such file or directory
Jul 10 20:50:21 gemn libvirtd[591]: Cannot find 'dmidecode' in path: No such file or directory
Jul 10 20:50:25 gemn systemd[1]: Failed to start WireGuard via wg-quick(8) for WARPv2_92.
Jul 10 21:39:52 gemn kernel: amdgpu 0000:03:00.0: Failed to set manual fan control mode
Jul 10 23:11:05 gemn kernel: amdgpu 0000:03:00.0: Failed to set manual fan control mode
Jul 10 23:52:25 gemn dbus-broker-launch[541]: Activation request for 'org.freedesktop.nm_dispatcher' failed.
Jul 10 23:52:25 gemn dbus-broker-launch[541]: Activation request for 'org.freedesktop.nm_dispatcher' failed.
[user@gemn hyprland]$ coredumpctl list | grep Hyprland
Sun 2026-05-31 15:20:51 +07   1730 1000 1000 SIGABRT missing  /usr/bin/Hyprland                                                                                                     -
Sun 2026-05-31 23:13:10 +07   1775 1000 1000 SIGABRT missing  /usr/bin/Hyprland                                                                                                     -
Mon 2026-06-01 15:03:24 +07   2391 1000 1000 SIGABRT missing  /usr/bin/Hyprland                                                                                                     -
Mon 2026-06-01 15:17:27 +07   1654 1000 1000 SIGABRT missing  /usr/bin/Hyprland                                                                                                     -
Wed 2026-06-10 18:21:25 +07   2094 1000 1000 SIGABRT missing  /usr/bin/Hyprland                                                                                                     -
Thu 2026-06-11 20:10:02 +07   1847 1000 1000 SIGABRT missing  /usr/bin/Hyprland                                                                                                     -
Wed 2026-06-17 18:09:11 +07   1925 1000 1000 SIGABRT missing  /usr/bin/Hyprland                                                                                                     -
Thu 2026-06-18 13:00:13 +07   1845 1000 1000 SIGABRT missing  /usr/bin/Hyprland                                                                                                     -
Mon 2026-06-22 11:05:51 +07   2040 1000 1000 SIGABRT missing  /usr/bin/Hyprland                                                                                                     -
Mon 2026-06-22 23:07:51 +07   2526 1000 1000 SIGABRT missing  /usr/bin/Hyprland                                                                                                     -
Tue 2026-06-23 13:57:29 +07  18003 1000 1000 SIGABRT missing  /usr/bin/Hyprland                                                                                                     -
Tue 2026-06-23 21:25:31 +07   2143 1000 1000 SIGABRT missing  /usr/bin/Hyprland                                                                                                     -
Wed 2026-06-24 11:10:31 +07   1894 1000 1000 SIGABRT missing  /usr/bin/Hyprland                                                                                                     -
Wed 2026-06-24 11:50:01 +07   1916 1000 1000 SIGABRT missing  /usr/bin/Hyprland                                                                                                     -
Wed 2026-06-24 12:08:53 +07   2123 1000 1000 SIGABRT missing  /usr/bin/Hyprland                                                                                                     -
Wed 2026-06-24 12:16:15 +07   1987 1000 1000 SIGABRT missing  /usr/bin/Hyprland                                                                                                     -
Thu 2026-06-25 13:30:21 +07   1988 1000 1000 SIGABRT missing  /usr/bin/Hyprland                                                                                                     -
Fri 2026-06-26 13:14:36 +07   2488 1000 1000 SIGABRT missing  /usr/bin/Hyprland                                                                                                     -
Fri 2026-06-26 16:12:30 +07   2158 1000 1000 SIGABRT missing  /usr/bin/Hyprland                                                                                                     -
Fri 2026-06-26 16:16:28 +07   1816 1000 1000 SIGABRT missing  /usr/bin/Hyprland                                                                                                     -
Fri 2026-06-26 17:26:59 +07   1938 1000 1000 SIGABRT missing  /usr/bin/Hyprland                                                                                                     -
Fri 2026-06-26 18:03:13 +07   2863 1000 1000 SIGABRT missing  /usr/bin/Hyprland                                                                                                     -
Sun 2026-06-28 14:27:02 +07   1955 1000 1000 SIGABRT present  /usr/bin/Hyprland                                                                                                  7.5M
Sun 2026-06-28 16:01:44 +07   2109 1000 1000 SIGABRT present  /usr/bin/Hyprland                                                                                                  7.4M
Tue 2026-06-30 15:16:26 +07   2118 1000 1000 SIGABRT present  /usr/bin/Hyprland                                                                                                  7.5M
Tue 2026-06-30 16:50:08 +07   3645 1000 1000 SIGABRT present  /usr/bin/Hyprland                                                                                                  7.4M
Wed 2026-07-01 23:15:55 +07   5691 1000 1000 SIGABRT present  /usr/bin/Hyprland                                                                                                  7.7M
Thu 2026-07-02 19:07:56 +07   2548 1000 1000 SIGABRT present  /usr/bin/Hyprland                                                                                                  7.7M
Fri 2026-07-03 17:19:43 +07   2066 1000 1000 SIGABRT present  /usr/bin/Hyprland                                                                                                  7.6M
Fri 2026-07-03 17:24:52 +07   1790 1000 1000 SIGABRT present  /usr/bin/Hyprland                                                                                                  7.3M
Fri 2026-07-03 17:36:23 +07   2492 1000 1000 SIGABRT present  /usr/bin/Hyprland                                                                                                  7.4M
Fri 2026-07-03 19:58:44 +07   2970 1000 1000 SIGABRT present  /usr/bin/Hyprland                                                                                                  7.2M
Sat 2026-07-11 11:53:46 +07   1816 1000 1000 SIGABRT present  /usr/bin/Hyprland                                                                                                  7.3M
[user@gemn hyprland]$ 



		  
		  Unit: session-2.scope
         Slice: user-1000.slice
       Session: 2
     Owner UID: 1000 (user)
       Boot ID: c6e3b9c8dbdd4746ba09be9cb745d670
    Machine ID: dcdbfa7168e844aa85ace6b247d4df91
      Hostname: gemn
       Storage: /var/lib/systemd/coredump/core.Hyprland.1000.c6e3b9c8dbdd4746ba09be9cb745d670.2094.1781090485000>
       Message: Process 2094 (Hyprland) of user 1000 dumped core.
                
                Stack trace of thread 2094:
                #0  0x00007f55c48256e6 abort (libc.so.6 + 0x256e6)
                #1  0x000055dcf6e12ee4 n/a (Hyprland + 0x3bbee4)
                #2  0x00007f55c483e8f0 n/a (libc.so.6 + 0x3e8f0)
                #3  0x00007f55c489a29c n/a (libc.so.6 + 0x9a29c)
                #4  0x00007f55c483e7d0 raise (libc.so.6 + 0x3e7d0)
                #5  0x000055dcf741eefa _ZN6Render2GL15CHyprOpenGLImpl5beginEN9Hyprutils6Memory14CSharedPointerI8>
                #6  0x000055dcf7408ea1 _ZN6Render2GL15CHyprGLRenderer19beginRenderInternalEN9Hyprutils6Memory14C>
                #7  0x000055dcf746c2f2 _ZN6Render13IHyprRenderer11beginRenderEN9Hyprutils6Memory14CSharedPointer>
                #8  0x000055dcf7472579 _ZN6Render13IHyprRenderer13renderMonitorEN9Hyprutils6Memory14CSharedPoint>
                #9  0x000055dcf7040c7c _ZN22CMonitorFrameScheduler7onFrameEv (Hyprland + 0x5e9c7c)
                #10 0x00007f55c6503e8d _ZN9Hyprutils6Signal15CSignalListener12emitInternalEPv (libhyprutils.so.1>
                #11 0x00007f55c6504353 _ZN9Hyprutils6Signal11CSignalBase12emitInternalEPv (libhyprutils.so.12 + >
                #12 0x00007f55c6614ae8 n/a (libaquamarine.so.11 + 0xb4ae8)
                #13 0x00007f55c6132e95 drmHandleEvent (libdrm.so.2 + 0xee95)
                #14 0x00007f55c6628a4a n/a (libaquamarine.so.11 + 0xc8a4a)
                #15 0x000055dcf7176c9a n/a (Hyprland + 0x71fc9a)
                #16 0x00007f55c63bc3d2 wl_event_loop_dispatch (libwayland-server.so.0 + 0xa3d2)
                #17 0x00007f55c63be567 wl_display_run (libwayland-server.so.0 + 0xc567)
                #18 0x000055dcf717a2a0 _ZN17CEventLoopManager9enterLoopEv (Hyprland + 0x7232a0)
                #19 0x000055dcf6ccbd64 main (Hyprland + 0x274d64)
                #20 0x00007f55c4827741 n/a (libc.so.6 + 0x27741)
                #21 0x00007f55c4827879 __libc_start_main (libc.so.6 + 0x27879)
                #22 0x000055dcf6dfce45 _start (Hyprland + 0x3a5e45)
                
                Stack trace of thread 2110:
                #0  0x00007f55c48a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f55c4894abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f55c4894e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f55c489766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f55bc42e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007f55bc3e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007f55bc42e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007f55c48981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f55c491d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2097:
                #0  0x00007f55c48a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f55c4894abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f55c4894e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f55c4897aec pthread_cond_clockwait (libc.so.6 + 0x97aec)
                #4  0x00007f55c6455042 _ZN12Hyprgraphics22CAsyncResourceGatherer18asyncAssetSpinLockEv (libhyprg>
                #5  0x00007f55c4ceb919 n/a (libstdc++.so.6 + 0xeb919)
                #6  0x00007f55c48981b9 n/a (libc.so.6 + 0x981b9)
                #7  0x00007f55c491d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2113:
                #0  0x00007f55c48a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f55c4894abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f55c4894e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f55c489766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f55bc42e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007f55bc3e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007f55bc42e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007f55c48981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f55c491d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2111:
                #0  0x00007f55c48a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f55c4894abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f55c4894e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f55c489766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f55bc42e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007f55bc3e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007f55bc42e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007f55c48981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f55c491d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2114:
                #0  0x00007f55c48a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f55c4894abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f55c4894e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f55c489766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f55bc42e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007f55bc3e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007f55bc42e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007f55c48981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f55c491d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2112:
                #0  0x00007f55c48a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f55c4894abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f55c4894e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f55c489766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f55bc42e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007f55bc3e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007f55bc42e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007f55c48981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f55c491d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2145:
                #0  0x00007f55c48a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f55c4894abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f55c4894e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f55c489766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f55bc42e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007f55bc3e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007f55bc42e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007f55c48981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f55c491d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2139:
                #0  0x00007f55c48a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f55c4894abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f55c4894e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f55c489766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f55bc42e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007f55bc3e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007f55bc42e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007f55c48981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f55c491d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2147:
                #0  0x00007f55c48a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f55c4894abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f55c4894b04 n/a (libc.so.6 + 0x94b04)
                #3  0x00007f55c490fff6 ppoll (libc.so.6 + 0x10fff6)
                #4  0x00007f55c4700edf n/a (libglib-2.0.so.0 + 0x63edf)
                #5  0x00007f55c4700fe5 g_main_context_iteration (libglib-2.0.so.0 + 0x63fe5)
                #6  0x00007f55c4701032 n/a (libglib-2.0.so.0 + 0x64032)
                #7  0x00007f55c4737ad4 n/a (libglib-2.0.so.0 + 0x9aad4)
                #8  0x00007f55c48981b9 n/a (libc.so.6 + 0x981b9)
                #9  0x00007f55c491d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2819:
                #0  0x00007f55c48a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f55c4894abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f55c4894e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f55c489766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f55bc42e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007f55bc3e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007f55bc42e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007f55c48981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f55c491d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2109:
                #0  0x00007f55c48a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f55c4894abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f55c4894e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f55c489766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f55bc42e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007f55bc3e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007f55bc42e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007f55c48981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f55c491d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2132:
                #0  0x00007f55c48a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f55c4894abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f55c4894e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f55c489766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f55bc42e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007f55bc3e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007f55bc42e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007f55c48981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f55c491d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2133:
                #0  0x00007f55c48a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f55c4894abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f55c4894e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f55c489766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f55bc42e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007f55bc3e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007f55bc42e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007f55c48981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f55c491d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2115:
                #0  0x00007f55c48a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f55c4894abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f55c4894e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f55c489766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f55bc42e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007f55bc3e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007f55bc42e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007f55c48981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f55c491d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2148:
                #0  0x00007f55c48a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f55c4894abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f55c4894b04 n/a (libc.so.6 + 0x94b04)
                #3  0x00007f55c490fff6 ppoll (libc.so.6 + 0x10fff6)
                #4  0x00007f55c4700edf n/a (libglib-2.0.so.0 + 0x63edf)
                #5  0x00007f55c4700fe5 g_main_context_iteration (libglib-2.0.so.0 + 0x63fe5)
                #6  0x00007f55c24837be n/a (libdconfsettings.so + 0x77be)
                #7  0x00007f55c4737ad4 n/a (libglib-2.0.so.0 + 0x9aad4)
                #8  0x00007f55c48981b9 n/a (libc.so.6 + 0x981b9)
                #9  0x00007f55c491d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2156:
                #0  0x00007f55c48a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f55c4894abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f55c4894e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f55c489766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f55bc42e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007f55bc3e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007f55bc42e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007f55c48981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f55c491d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2146:
                #0  0x00007f55c491af9d syscall (libc.so.6 + 0x11af9d)
                #1  0x00007f55c472e0de g_cond_wait (libglib-2.0.so.0 + 0x910de)
                #2  0x00007f55c46c354d n/a (libglib-2.0.so.0 + 0x2654d)
                #3  0x00007f55c4737fd7 n/a (libglib-2.0.so.0 + 0x9afd7)
                #4  0x00007f55c4737ad4 n/a (libglib-2.0.so.0 + 0x9aad4)
                #5  0x00007f55c48981b9 n/a (libc.so.6 + 0x981b9)
                #6  0x00007f55c491d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2138:
                #0  0x00007f55c48a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f55c4894abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f55c4894e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f55c489766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f55bc42e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007f55bc3e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007f55bc42e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007f55c48981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f55c491d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2171:
                #0  0x00007f55c491af9d syscall (libc.so.6 + 0x11af9d)
                #1  0x00007f55c472e0de g_cond_wait (libglib-2.0.so.0 + 0x910de)
                #2  0x00007f55c46c354d n/a (libglib-2.0.so.0 + 0x2654d)
                #3  0x00007f55c46c35c6 g_async_queue_pop (libglib-2.0.so.0 + 0x265c6)
                #4  0x00007f55c4ee151c n/a (libpangoft2-1.0.so.0 + 0xc51c)
                #5  0x00007f55c4737ad4 n/a (libglib-2.0.so.0 + 0x9aad4)
                #6  0x00007f55c48981b9 n/a (libc.so.6 + 0x981b9)
                #7  0x00007f55c491d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2131:
                #0  0x00007f55c48a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f55c4894abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f55c4894e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f55c489766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f55bc42e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007f55bc3e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007f55bc42e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007f55c48981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f55c491d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2144:
                #0  0x00007f55c48a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f55c4894abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f55c4894e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f55c489766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f55bc42e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007f55bc3e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007f55bc42e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007f55c48981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f55c491d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2143:
                #0  0x00007f55c48a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f55c4894abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f55c4894e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f55c489766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f55bc42e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007f55bc3e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007f55bc42e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007f55c48981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f55c491d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2136:
                #0  0x00007f55c48a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f55c4894abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f55c4894e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f55c489766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f55bc42e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007f55bc3e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007f55bc42e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007f55c48981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f55c491d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2134:
                #0  0x00007f55c48a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f55c4894abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f55c4894e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f55c489766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f55bc42e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007f55bc3e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007f55bc42e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007f55c48981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f55c491d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2137:
                #0  0x00007f55c48a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f55c4894abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f55c4894e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f55c489766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f55bc42e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007f55bc3e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007f55bc42e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007f55c48981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f55c491d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2151:
                #0  0x00007f55c48a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f55c4894abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f55c4894b04 n/a (libc.so.6 + 0x94b04)
                #3  0x00007f55c490fff6 ppoll (libc.so.6 + 0x10fff6)
                #4  0x00007f55c4700edf n/a (libglib-2.0.so.0 + 0x63edf)
                #5  0x00007f55c47011a7 g_main_loop_run (libglib-2.0.so.0 + 0x641a7)
                #6  0x00007f55c5fe6974 n/a (libgio-2.0.so.0 + 0x127974)
                #7  0x00007f55c4737ad4 n/a (libglib-2.0.so.0 + 0x9aad4)
                #8  0x00007f55c48981b9 n/a (libc.so.6 + 0x981b9)
                #9  0x00007f55c491d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2135:
                #0  0x00007f55c48a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f55c4894abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f55c4894e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f55c489766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f55bc42e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007f55bc3e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007f55bc42e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007f55c48981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f55c491d21c n/a (libc.so.6 + 0x11d21c)
                ELF object binary architecture: AMD x86-64

           PID: 1847 (Hyprland)
           UID: 1000 (user)
           GID: 1000 (user)
        Signal: 6 (ABRT)
     Timestamp: Thu 2026-06-11 20:10:02 +07 (4 weeks 1 day ago)
  Command Line: Hyprland --watchdog-fd 4
    Executable: /usr/bin/Hyprland
 Control Group: /user.slice/user-1000.slice/session-2.scope
          Unit: session-2.scope
         Slice: user-1000.slice
       Session: 2
     Owner UID: 1000 (user)
       Boot ID: 877d9bbf61f646e4a30d524a3cefa9a9
    Machine ID: dcdbfa7168e844aa85ace6b247d4df91
      Hostname: gemn
       Storage: /var/lib/systemd/coredump/core.Hyprland.1000.877d9bbf61f646e4a30d524a3cefa9a9.1847.1781183402000>
       Message: Process 1847 (Hyprland) of user 1000 dumped core.
                
                Stack trace of thread 1847:
                #0  0x00007f255fc256e6 abort (libc.so.6 + 0x256e6)
                #1  0x0000555c7ba86ee4 n/a (Hyprland + 0x3bbee4)
                #2  0x00007f255fc3e8f0 n/a (libc.so.6 + 0x3e8f0)
                #3  0x00007f255fc9a29c n/a (libc.so.6 + 0x9a29c)
                #4  0x00007f255fc3e7d0 raise (libc.so.6 + 0x3e7d0)
                #5  0x0000555c7c092efa _ZN6Render2GL15CHyprOpenGLImpl5beginEN9Hyprutils6Memory14CSharedPointerI8>
                #6  0x0000555c7c07cea1 _ZN6Render2GL15CHyprGLRenderer19beginRenderInternalEN9Hyprutils6Memory14C>
                #7  0x0000555c7c0e02f2 _ZN6Render13IHyprRenderer11beginRenderEN9Hyprutils6Memory14CSharedPointer>
                #8  0x0000555c7c0e6579 _ZN6Render13IHyprRenderer13renderMonitorEN9Hyprutils6Memory14CSharedPoint>
                #9  0x0000555c7bcb4c7c _ZN22CMonitorFrameScheduler7onFrameEv (Hyprland + 0x5e9c7c)
                #10 0x00007f25617c2e8d _ZN9Hyprutils6Signal15CSignalListener12emitInternalEPv (libhyprutils.so.1>
                #11 0x00007f25617c3353 _ZN9Hyprutils6Signal11CSignalBase12emitInternalEPv (libhyprutils.so.12 + >
                #12 0x00007f25618d3ae8 n/a (libaquamarine.so.11 + 0xb4ae8)
                #13 0x00007f25613f1e95 drmHandleEvent (libdrm.so.2 + 0xee95)
                #14 0x00007f25618e7a4a n/a (libaquamarine.so.11 + 0xc8a4a)
                #15 0x0000555c7bdeac9a n/a (Hyprland + 0x71fc9a)
                #16 0x00007f256167b3d2 wl_event_loop_dispatch (libwayland-server.so.0 + 0xa3d2)
                #17 0x00007f256167d567 wl_display_run (libwayland-server.so.0 + 0xc567)
                #18 0x0000555c7bdee2a0 _ZN17CEventLoopManager9enterLoopEv (Hyprland + 0x7232a0)
                #19 0x0000555c7b93fd64 main (Hyprland + 0x274d64)
                #20 0x00007f255fc27741 n/a (libc.so.6 + 0x27741)
                #21 0x00007f255fc27879 __libc_start_main (libc.so.6 + 0x27879)
                #22 0x0000555c7ba70e45 _start (Hyprland + 0x3a5e45)
                
                Stack trace of thread 1862:
                #0  0x00007f255fca0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f255fc94abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f255fc94e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f255fc9766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f255782e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007f25577e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007f255782e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007f255fc981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f255fd1d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1850:
                #0  0x00007f255fca0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f255fc94abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f255fc94e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f255fc97aec pthread_cond_clockwait (libc.so.6 + 0x97aec)
                #4  0x00007f2561714042 _ZN12Hyprgraphics22CAsyncResourceGatherer18asyncAssetSpinLockEv (libhyprg>
                #5  0x00007f25600eb919 n/a (libstdc++.so.6 + 0xeb919)
                #6  0x00007f255fc981b9 n/a (libc.so.6 + 0x981b9)
                #7  0x00007f255fd1d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1863:
                #0  0x00007f255fca0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f255fc94abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f255fc94e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f255fc9766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f255782e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007f25577e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007f255782e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007f255fc981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f255fd1d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1865:
                #0  0x00007f255fca0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f255fc94abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f255fc94e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f255fc9766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f255782e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007f25577e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007f255782e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007f255fc981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f255fd1d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1866:
                #0  0x00007f255fca0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f255fc94abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f255fc94e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f255fc9766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f255782e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007f25577e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007f255782e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007f255fc981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f255fd1d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1909:
                #0  0x00007f255fca0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f255fc94abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f255fc94e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f255fc9766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f255782e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007f25577e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007f255782e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007f255fc981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f255fd1d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1885:
                #0  0x00007f255fca0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f255fc94abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f255fc94e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f255fc9766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f255782e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007f25577e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007f255782e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007f255fc981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f255fd1d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1897:
                #0  0x00007f255fca0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f255fc94abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f255fc94e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f255fc9766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f255782e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007f25577e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007f255782e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007f255fc981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f255fd1d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1889:
                #0  0x00007f255fca0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f255fc94abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f255fc94e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f255fc9766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f255782e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007f25577e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007f255782e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007f255fc981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f255fd1d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1886:
                #0  0x00007f255fca0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f255fc94abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f255fc94e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f255fc9766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f255782e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007f25577e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007f255782e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007f255fc981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f255fd1d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1898:
                #0  0x00007f255fca0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f255fc94abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f255fc94e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f255fc9766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f255782e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007f25577e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007f255782e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007f255fc981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f255fd1d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1899:
                #0  0x00007f255fd1af9d syscall (libc.so.6 + 0x11af9d)
                #1  0x00007f255f52e0de g_cond_wait (libglib-2.0.so.0 + 0x910de)
                #2  0x00007f255f4c354d n/a (libglib-2.0.so.0 + 0x2654d)
                #3  0x00007f255f537fd7 n/a (libglib-2.0.so.0 + 0x9afd7)
                #4  0x00007f255f537ad4 n/a (libglib-2.0.so.0 + 0x9aad4)
                #5  0x00007f255fc981b9 n/a (libc.so.6 + 0x981b9)
                #6  0x00007f255fd1d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1891:
                #0  0x00007f255fca0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f255fc94abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f255fc94e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f255fc9766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f255782e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007f25577e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007f255782e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007f255fc981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f255fd1d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2552:
                #0  0x00007f255fca0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f255fc94abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f255fc94e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f255fc9766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f255782e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007f25577e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007f255782e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007f255fc981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f255fd1d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1924:
                #0  0x00007f255fd1af9d syscall (libc.so.6 + 0x11af9d)
                #1  0x00007f255f52e0de g_cond_wait (libglib-2.0.so.0 + 0x910de)
                #2  0x00007f255f4c354d n/a (libglib-2.0.so.0 + 0x2654d)
                #3  0x00007f255f4c35c6 g_async_queue_pop (libglib-2.0.so.0 + 0x265c6)
                #4  0x00007f255fb2c51c n/a (libpangoft2-1.0.so.0 + 0xc51c)
                #5  0x00007f255f537ad4 n/a (libglib-2.0.so.0 + 0x9aad4)
                #6  0x00007f255fc981b9 n/a (libc.so.6 + 0x981b9)
                #7  0x00007f255fd1d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1900:
                #0  0x00007f255fca0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f255fc94abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f255fc94b04 n/a (libc.so.6 + 0x94b04)
                #3  0x00007f255fd0fff6 ppoll (libc.so.6 + 0x10fff6)
                #4  0x00007f255f500edf n/a (libglib-2.0.so.0 + 0x63edf)
                #5  0x00007f255f500fe5 g_main_context_iteration (libglib-2.0.so.0 + 0x63fe5)
                #6  0x00007f255f501032 n/a (libglib-2.0.so.0 + 0x64032)
                #7  0x00007f255f537ad4 n/a (libglib-2.0.so.0 + 0x9aad4)
                #8  0x00007f255fc981b9 n/a (libc.so.6 + 0x981b9)
                #9  0x00007f255fd1d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1884:
                #0  0x00007f255fca0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f255fc94abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f255fc94e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f255fc9766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f255782e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007f25577e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007f255782e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007f255fc981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f255fd1d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2554:
                #0  0x00007f255fca0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f255fc94abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f255fc94e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f255fc9766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f255782e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007f25577e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007f255782e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007f255fc981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f255fd1d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1892:
                #0  0x00007f255fca0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f255fc94abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f255fc94e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f255fc9766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f255782e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007f25577e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007f255782e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007f255fc981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f255fd1d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1901:
                #0  0x00007f255fca0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f255fc94abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f255fc94b04 n/a (libc.so.6 + 0x94b04)
                #3  0x00007f255fd0fff6 ppoll (libc.so.6 + 0x10fff6)
                #4  0x00007f255f500edf n/a (libglib-2.0.so.0 + 0x63edf)
                #5  0x00007f255f500fe5 g_main_context_iteration (libglib-2.0.so.0 + 0x63fe5)
                #6  0x00007f255d3467be n/a (libdconfsettings.so + 0x77be)
                #7  0x00007f255f537ad4 n/a (libglib-2.0.so.0 + 0x9aad4)
                #8  0x00007f255fc981b9 n/a (libc.so.6 + 0x981b9)
                #9  0x00007f255fd1d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1887:
                #0  0x00007f255fca0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f255fc94abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f255fc94e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f255fc9766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f255782e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007f25577e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007f255782e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007f255fc981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f255fd1d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1890:
                #0  0x00007f255fca0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f255fc94abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f255fc94e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f255fc9766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f255782e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007f25577e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007f255782e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007f255fc981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f255fd1d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1904:
                #0  0x00007f255fca0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f255fc94abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f255fc94b04 n/a (libc.so.6 + 0x94b04)
                #3  0x00007f255fd0fff6 ppoll (libc.so.6 + 0x10fff6)
                #4  0x00007f255f500edf n/a (libglib-2.0.so.0 + 0x63edf)
                #5  0x00007f255f5011a7 g_main_loop_run (libglib-2.0.so.0 + 0x641a7)
                #6  0x00007f25612a5974 n/a (libgio-2.0.so.0 + 0x127974)
                #7  0x00007f255f537ad4 n/a (libglib-2.0.so.0 + 0x9aad4)
                #8  0x00007f255fc981b9 n/a (libc.so.6 + 0x981b9)
                #9  0x00007f255fd1d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1867:
                #0  0x00007f255fca0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f255fc94abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f255fc94e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f255fc9766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f255782e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007f25577e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007f255782e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007f255fc981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f255fd1d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1864:
                #0  0x00007f255fca0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f255fc94abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f255fc94e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f255fc9766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f255782e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007f25577e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007f255782e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007f255fc981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f255fd1d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1868:
                #0  0x00007f255fca0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f255fc94abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f255fc94e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f255fc9766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f255782e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007f25577e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007f255782e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007f255fc981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f255fd1d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1888:
                #0  0x00007f255fca0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f255fc94abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f255fc94e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f255fc9766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f255782e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007f25577e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007f255782e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007f255fc981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f255fd1d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1896:
                #0  0x00007f255fca0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f255fc94abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f255fc94e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f255fc9766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f255782e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007f25577e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007f255782e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007f255fc981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f255fd1d21c n/a (libc.so.6 + 0x11d21c)
                ELF object binary architecture: AMD x86-64

           PID: 1925 (Hyprland)
           UID: 1000 (user)
           GID: 1000 (user)
        Signal: 6 (ABRT)
     Timestamp: Wed 2026-06-17 18:09:10 +07 (3 weeks 2 days ago)
  Command Line: Hyprland --watchdog-fd 4
    Executable: /usr/bin/Hyprland
 Control Group: /user.slice/user-1000.slice/session-2.scope
          Unit: session-2.scope
         Slice: user-1000.slice
       Session: 2
     Owner UID: 1000 (user)
       Boot ID: ea726ec21c5d4f2a8b72237c49485d31
    Machine ID: dcdbfa7168e844aa85ace6b247d4df91
      Hostname: gemn
       Storage: /var/lib/systemd/coredump/core.Hyprland.1000.ea726ec21c5d4f2a8b72237c49485d31.1925.1781694550000>
       Message: Process 1925 (Hyprland) of user 1000 dumped core.
                
                Stack trace of thread 1925:
                #0  0x00007fe7208256e6 abort (libc.so.6 + 0x256e6)
                #1  0x0000564c7f56bae4 n/a (Hyprland + 0x3bfae4)
                #2  0x00007fe72083e8f0 n/a (libc.so.6 + 0x3e8f0)
                #3  0x00007fe72089a29c n/a (libc.so.6 + 0x9a29c)
                #4  0x00007fe72083e7d0 raise (libc.so.6 + 0x3e7d0)
                #5  0x0000564c7fb7ef8e _ZN6Render2GL15CHyprOpenGLImpl5beginEN9Hyprutils6Memory14CSharedPointerI8>
                #6  0x0000564c7fb69041 _ZN6Render2GL15CHyprGLRenderer19beginRenderInternalEN9Hyprutils6Memory14C>
                #7  0x0000564c7fbcc8e4 _ZN6Render13IHyprRenderer11beginRenderEN9Hyprutils6Memory14CSharedPointer>
                #8  0x0000564c7fbd2ffd _ZN6Render13IHyprRenderer13renderMonitorEN9Hyprutils6Memory14CSharedPoint>
                #9  0x0000564c7f79d62c _ZN22CMonitorFrameScheduler7onFrameEv (Hyprland + 0x5f162c)
                #10 0x00007fe722392e8d _ZN9Hyprutils6Signal15CSignalListener12emitInternalEPv (libhyprutils.so.1>
                #11 0x00007fe722393353 _ZN9Hyprutils6Signal11CSignalBase12emitInternalEPv (libhyprutils.so.12 + >
                #12 0x00007fe7224a3fa8 n/a (libaquamarine.so.11 + 0xb4fa8)
                #13 0x00007fe721fc1e95 drmHandleEvent (libdrm.so.2 + 0xee95)
                #14 0x00007fe7224b81ca n/a (libaquamarine.so.11 + 0xc91ca)
                #15 0x0000564c7f8d501a n/a (Hyprland + 0x72901a)
                #16 0x00007fe72224b3d2 wl_event_loop_dispatch (libwayland-server.so.0 + 0xa3d2)
                #17 0x00007fe72224d567 wl_display_run (libwayland-server.so.0 + 0xc567)
                #18 0x0000564c7f8d8620 _ZN17CEventLoopManager9enterLoopEv (Hyprland + 0x72c620)
                #19 0x0000564c7f4246d5 main (Hyprland + 0x2786d5)
                #20 0x00007fe720827741 n/a (libc.so.6 + 0x27741)
                #21 0x00007fe720827879 __libc_start_main (libc.so.6 + 0x27879)
                #22 0x0000564c7f555a75 _start (Hyprland + 0x3a9a75)
                
                Stack trace of thread 1928:
                #0  0x00007fe7208a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007fe720894abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007fe720894e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007fe720897aec pthread_cond_clockwait (libc.so.6 + 0x97aec)
                #4  0x00007fe7222e4042 _ZN12Hyprgraphics22CAsyncResourceGatherer18asyncAssetSpinLockEv (libhyprg>
                #5  0x00007fe720ceb919 n/a (libstdc++.so.6 + 0xeb919)
                #6  0x00007fe7208981b9 n/a (libc.so.6 + 0x981b9)
                #7  0x00007fe72091d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1963:
                #0  0x00007fe7208a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007fe720894abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007fe720894e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007fe72089766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007fe71842e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007fe7183e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007fe71842e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007fe7208981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007fe72091d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1964:
                #0  0x00007fe7208a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007fe720894abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007fe720894e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007fe72089766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007fe71842e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007fe7183e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007fe71842e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007fe7208981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007fe72091d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1976:
                #0  0x00007fe7208a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007fe720894abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007fe720894e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007fe72089766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007fe71842e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007fe7183e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007fe71842e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007fe7208981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007fe72091d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1942:
                #0  0x00007fe7208a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007fe720894abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007fe720894e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007fe72089766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007fe71842e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007fe7183e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007fe71842e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007fe7208981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007fe72091d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1943:
                #0  0x00007fe7208a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007fe720894abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007fe720894e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007fe72089766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007fe71842e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007fe7183e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007fe71842e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007fe7208981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007fe72091d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1979:
                #0  0x00007fe7208a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007fe720894abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007fe720894b04 n/a (libc.so.6 + 0x94b04)
                #3  0x00007fe72090fff6 ppoll (libc.so.6 + 0x10fff6)
                #4  0x00007fe720100edf n/a (libglib-2.0.so.0 + 0x63edf)
                #5  0x00007fe720100fe5 g_main_context_iteration (libglib-2.0.so.0 + 0x63fe5)
                #6  0x00007fe720101032 n/a (libglib-2.0.so.0 + 0x64032)
                #7  0x00007fe720137ad4 n/a (libglib-2.0.so.0 + 0x9aad4)
                #8  0x00007fe7208981b9 n/a (libc.so.6 + 0x981b9)
                #9  0x00007fe72091d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1980:
                #0  0x00007fe7208a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007fe720894abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007fe720894b04 n/a (libc.so.6 + 0x94b04)
                #3  0x00007fe72090fff6 ppoll (libc.so.6 + 0x10fff6)
                #4  0x00007fe720100edf n/a (libglib-2.0.so.0 + 0x63edf)
                #5  0x00007fe720100fe5 g_main_context_iteration (libglib-2.0.so.0 + 0x63fe5)
                #6  0x00007fe71df007be n/a (libdconfsettings.so + 0x77be)
                #7  0x00007fe720137ad4 n/a (libglib-2.0.so.0 + 0x9aad4)
                #8  0x00007fe7208981b9 n/a (libc.so.6 + 0x981b9)
                #9  0x00007fe72091d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1965:
                #0  0x00007fe7208a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007fe720894abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007fe720894e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007fe72089766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007fe71842e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007fe7183e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007fe71842e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007fe7208981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007fe72091d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1940:
                #0  0x00007fe7208a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007fe720894abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007fe720894e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007fe72089766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007fe71842e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007fe7183e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007fe71842e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007fe7208981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007fe72091d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1977:
                #0  0x00007fe7208a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007fe720894abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007fe720894e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007fe72089766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007fe71842e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007fe7183e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007fe71842e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007fe7208981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007fe72091d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1975:
                #0  0x00007fe7208a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007fe720894abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007fe720894e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007fe72089766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007fe71842e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007fe7183e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007fe71842e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007fe7208981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007fe72091d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1978:
                #0  0x00007fe72091af9d syscall (libc.so.6 + 0x11af9d)
                #1  0x00007fe72012e0de g_cond_wait (libglib-2.0.so.0 + 0x910de)
                #2  0x00007fe7200c354d n/a (libglib-2.0.so.0 + 0x2654d)
                #3  0x00007fe720137fd7 n/a (libglib-2.0.so.0 + 0x9afd7)
                #4  0x00007fe720137ad4 n/a (libglib-2.0.so.0 + 0x9aad4)
                #5  0x00007fe7208981b9 n/a (libc.so.6 + 0x981b9)
                #6  0x00007fe72091d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1946:
                #0  0x00007fe7208a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007fe720894abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007fe720894e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007fe72089766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007fe71842e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007fe7183e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007fe71842e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007fe7208981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007fe72091d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1941:
                #0  0x00007fe7208a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007fe720894abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007fe720894e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007fe72089766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007fe71842e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007fe7183e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007fe71842e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007fe7208981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007fe72091d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1967:
                #0  0x00007fe7208a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007fe720894abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007fe720894e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007fe72089766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007fe71842e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007fe7183e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007fe71842e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007fe7208981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007fe72091d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1983:
                #0  0x00007fe7208a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007fe720894abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007fe720894b04 n/a (libc.so.6 + 0x94b04)
                #3  0x00007fe72090fff6 ppoll (libc.so.6 + 0x10fff6)
                #4  0x00007fe720100edf n/a (libglib-2.0.so.0 + 0x63edf)
                #5  0x00007fe7201011a7 g_main_loop_run (libglib-2.0.so.0 + 0x641a7)
                #6  0x00007fe721e75974 n/a (libgio-2.0.so.0 + 0x127974)
                #7  0x00007fe720137ad4 n/a (libglib-2.0.so.0 + 0x9aad4)
                #8  0x00007fe7208981b9 n/a (libc.so.6 + 0x981b9)
                #9  0x00007fe72091d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1988:
                #0  0x00007fe7208a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007fe720894abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007fe720894e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007fe72089766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007fe71842e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007fe7183e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007fe71842e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007fe7208981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007fe72091d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2015:
                #0  0x00007fe72091af9d syscall (libc.so.6 + 0x11af9d)
                #1  0x00007fe72012e0de g_cond_wait (libglib-2.0.so.0 + 0x910de)
                #2  0x00007fe7200c354d n/a (libglib-2.0.so.0 + 0x2654d)
                #3  0x00007fe7200c35c6 g_async_queue_pop (libglib-2.0.so.0 + 0x265c6)
                #4  0x00007fe7206fd51c n/a (libpangoft2-1.0.so.0 + 0xc51c)
                #5  0x00007fe720137ad4 n/a (libglib-2.0.so.0 + 0x9aad4)
                #6  0x00007fe7208981b9 n/a (libc.so.6 + 0x981b9)
                #7  0x00007fe72091d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1945:
                #0  0x00007fe7208a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007fe720894abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007fe720894e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007fe72089766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007fe71842e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007fe7183e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007fe71842e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007fe7208981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007fe72091d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1966:
                #0  0x00007fe7208a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007fe720894abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007fe720894e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007fe72089766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007fe71842e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007fe7183e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007fe71842e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007fe7208981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007fe72091d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1969:
                #0  0x00007fe7208a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007fe720894abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007fe720894e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007fe72089766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007fe71842e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007fe7183e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007fe71842e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007fe7208981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007fe72091d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1970:
                #0  0x00007fe7208a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007fe720894abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007fe720894e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007fe72089766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007fe71842e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007fe7183e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007fe71842e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007fe7208981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007fe72091d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1971:
                #0  0x00007fe7208a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007fe720894abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007fe720894e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007fe72089766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007fe71842e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007fe7183e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007fe71842e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007fe7208981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007fe72091d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2609:
                #0  0x00007fe7208a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007fe720894abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007fe720894e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007fe72089766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007fe71842e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007fe7183e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007fe71842e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007fe7208981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007fe72091d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1944:
                #0  0x00007fe7208a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007fe720894abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007fe720894e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007fe72089766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007fe71842e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007fe7183e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007fe71842e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007fe7208981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007fe72091d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1968:
                #0  0x00007fe7208a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007fe720894abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007fe720894e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007fe72089766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007fe71842e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007fe7183e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007fe71842e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007fe7208981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007fe72091d21c n/a (libc.so.6 + 0x11d21c)
                ELF object binary architecture: AMD x86-64

           PID: 1845 (Hyprland)
           UID: 1000 (user)
           GID: 1000 (user)
        Signal: 6 (ABRT)
     Timestamp: Thu 2026-06-18 13:00:13 +07 (3 weeks 1 day ago)
  Command Line: Hyprland --watchdog-fd 4
    Executable: /usr/bin/Hyprland
 Control Group: /user.slice/user-1000.slice/session-2.scope
          Unit: session-2.scope
         Slice: user-1000.slice
       Session: 2
     Owner UID: 1000 (user)
       Boot ID: a414000bf06743ee8a2659653518c2e1
    Machine ID: dcdbfa7168e844aa85ace6b247d4df91
      Hostname: gemn
       Storage: /var/lib/systemd/coredump/core.Hyprland.1000.a414000bf06743ee8a2659653518c2e1.1845.1781762413000>
       Message: Process 1845 (Hyprland) of user 1000 dumped core.
                
                Stack trace of thread 1845:
                #0  0x00007f28a50256e6 abort (libc.so.6 + 0x256e6)
                #1  0x00005577cd5caae4 n/a (Hyprland + 0x3bfae4)
                #2  0x00007f28a503e8f0 n/a (libc.so.6 + 0x3e8f0)
                #3  0x00007f28a509a29c n/a (libc.so.6 + 0x9a29c)
                #4  0x00007f28a503e7d0 raise (libc.so.6 + 0x3e7d0)
                #5  0x00005577cdbddf8e _ZN6Render2GL15CHyprOpenGLImpl5beginEN9Hyprutils6Memory14CSharedPointerI8>
                #6  0x00005577cdbc8041 _ZN6Render2GL15CHyprGLRenderer19beginRenderInternalEN9Hyprutils6Memory14C>
                #7  0x00005577cdc2b8e4 _ZN6Render13IHyprRenderer11beginRenderEN9Hyprutils6Memory14CSharedPointer>
                #8  0x00005577cdc31ffd _ZN6Render13IHyprRenderer13renderMonitorEN9Hyprutils6Memory14CSharedPoint>
                #9  0x00005577cd7fc62c _ZN22CMonitorFrameScheduler7onFrameEv (Hyprland + 0x5f162c)
                #10 0x00007f28a6b76e8d _ZN9Hyprutils6Signal15CSignalListener12emitInternalEPv (libhyprutils.so.1>
                #11 0x00007f28a6b77353 _ZN9Hyprutils6Signal11CSignalBase12emitInternalEPv (libhyprutils.so.12 + >
                #12 0x00007f28a6c87fa8 n/a (libaquamarine.so.11 + 0xb4fa8)
                #13 0x00007f28a67a5e95 drmHandleEvent (libdrm.so.2 + 0xee95)
                #14 0x00007f28a6c9c1ca n/a (libaquamarine.so.11 + 0xc91ca)
                #15 0x00005577cd93401a n/a (Hyprland + 0x72901a)
                #16 0x00007f28a6a2f3d2 wl_event_loop_dispatch (libwayland-server.so.0 + 0xa3d2)
                #17 0x00007f28a6a31567 wl_display_run (libwayland-server.so.0 + 0xc567)
                #18 0x00005577cd937620 _ZN17CEventLoopManager9enterLoopEv (Hyprland + 0x72c620)
                #19 0x00005577cd4836d5 main (Hyprland + 0x2786d5)
                #20 0x00007f28a5027741 n/a (libc.so.6 + 0x27741)
                #21 0x00007f28a5027879 __libc_start_main (libc.so.6 + 0x27879)
                #22 0x00005577cd5b4a75 _start (Hyprland + 0x3a9a75)
                
                Stack trace of thread 1861:
                #0  0x00007f28a50a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f28a5094abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f28a5094e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f28a509766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f289ca2e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007f289c9e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007f289ca2e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007f28a50981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f28a511d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1863:
                #0  0x00007f28a50a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f28a5094abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f28a5094e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f28a509766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f289ca2e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007f289c9e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007f289ca2e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007f28a50981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f28a511d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1862:
                #0  0x00007f28a50a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f28a5094abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f28a5094e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f28a509766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f289ca2e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007f289c9e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007f289ca2e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007f28a50981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f28a511d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1864:
                #0  0x00007f28a50a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f28a5094abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f28a5094e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f28a509766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f289ca2e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007f289c9e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007f289ca2e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007f28a50981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f28a511d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1883:
                #0  0x00007f28a50a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f28a5094abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f28a5094e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f28a509766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f289ca2e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007f289c9e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007f289ca2e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007f28a50981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f28a511d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1890:
                #0  0x00007f28a50a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f28a5094abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f28a5094e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f28a509766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f289ca2e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007f289c9e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007f289ca2e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007f28a50981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f28a511d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1989:
                #0  0x00007f28a511af9d syscall (libc.so.6 + 0x11af9d)
                #1  0x00007f28a492e0de g_cond_wait (libglib-2.0.so.0 + 0x910de)
                #2  0x00007f28a48c354d n/a (libglib-2.0.so.0 + 0x2654d)
                #3  0x00007f28a48c35c6 g_async_queue_pop (libglib-2.0.so.0 + 0x265c6)
                #4  0x00007f28a4efd51c n/a (libpangoft2-1.0.so.0 + 0xc51c)
                #5  0x00007f28a4937ad4 n/a (libglib-2.0.so.0 + 0x9aad4)
                #6  0x00007f28a50981b9 n/a (libc.so.6 + 0x981b9)
                #7  0x00007f28a511d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1897:
                #0  0x00007f28a511af9d syscall (libc.so.6 + 0x11af9d)
                #1  0x00007f28a492e0de g_cond_wait (libglib-2.0.so.0 + 0x910de)
                #2  0x00007f28a48c354d n/a (libglib-2.0.so.0 + 0x2654d)
                #3  0x00007f28a4937fd7 n/a (libglib-2.0.so.0 + 0x9afd7)
                #4  0x00007f28a4937ad4 n/a (libglib-2.0.so.0 + 0x9aad4)
                #5  0x00007f28a50981b9 n/a (libc.so.6 + 0x981b9)
                #6  0x00007f28a511d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1884:
                #0  0x00007f28a50a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f28a5094abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f28a5094e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f28a509766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f289ca2e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007f289c9e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007f289ca2e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007f28a50981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f28a511d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1962:
                #0  0x00007f28a50a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f28a5094abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f28a5094e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f28a509766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f289ca2e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007f289c9e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007f289ca2e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007f28a50981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f28a511d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1860:
                #0  0x00007f28a50a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f28a5094abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f28a5094e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f28a509766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f289ca2e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007f289c9e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007f289ca2e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007f28a50981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f28a511d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1889:
                #0  0x00007f28a50a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f28a5094abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f28a5094e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f28a509766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f289ca2e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007f289c9e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007f289ca2e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007f28a50981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f28a511d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1848:
                #0  0x00007f28a50a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f28a5094abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f28a5094e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f28a5097aec pthread_cond_clockwait (libc.so.6 + 0x97aec)
                #4  0x00007f28a6ac8042 _ZN12Hyprgraphics22CAsyncResourceGatherer18asyncAssetSpinLockEv (libhyprg>
                #5  0x00007f28a54eb919 n/a (libstdc++.so.6 + 0xeb919)
                #6  0x00007f28a50981b9 n/a (libc.so.6 + 0x981b9)
                #7  0x00007f28a511d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1899:
                #0  0x00007f28a50a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f28a5094abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f28a5094b04 n/a (libc.so.6 + 0x94b04)
                #3  0x00007f28a510fff6 ppoll (libc.so.6 + 0x10fff6)
                #4  0x00007f28a4900edf n/a (libglib-2.0.so.0 + 0x63edf)
                #5  0x00007f28a4900fe5 g_main_context_iteration (libglib-2.0.so.0 + 0x63fe5)
                #6  0x00007f28a2ae07be n/a (libdconfsettings.so + 0x77be)
                #7  0x00007f28a4937ad4 n/a (libglib-2.0.so.0 + 0x9aad4)
                #8  0x00007f28a50981b9 n/a (libc.so.6 + 0x981b9)
                #9  0x00007f28a511d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2559:
                #0  0x00007f28a50a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f28a5094abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f28a5094e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f28a509766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f289ca2e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007f289c9e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007f289ca2e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007f28a50981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f28a511d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1896:
                #0  0x00007f28a50a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f28a5094abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f28a5094e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f28a509766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f289ca2e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007f289c9e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007f289ca2e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007f28a50981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f28a511d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2561:
                #0  0x00007f28a50a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f28a5094abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f28a5094e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f28a509766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f289ca2e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007f289c9e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007f289ca2e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007f28a50981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f28a511d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1882:
                #0  0x00007f28a50a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f28a5094abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f28a5094e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f28a509766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f289ca2e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007f289c9e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007f289ca2e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007f28a50981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f28a511d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1895:
                #0  0x00007f28a50a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f28a5094abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f28a5094e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f28a509766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f289ca2e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007f289c9e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007f289ca2e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007f28a50981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f28a511d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1886:
                #0  0x00007f28a50a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f28a5094abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f28a5094e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f28a509766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f289ca2e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007f289c9e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007f289ca2e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007f28a50981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f28a511d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1866:
                #0  0x00007f28a50a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f28a5094abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f28a5094e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f28a509766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f289ca2e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007f289c9e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007f289ca2e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007f28a50981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f28a511d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1898:
                #0  0x00007f28a50a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f28a5094abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f28a5094b04 n/a (libc.so.6 + 0x94b04)
                #3  0x00007f28a510fff6 ppoll (libc.so.6 + 0x10fff6)
                #4  0x00007f28a4900edf n/a (libglib-2.0.so.0 + 0x63edf)
                #5  0x00007f28a4900fe5 g_main_context_iteration (libglib-2.0.so.0 + 0x63fe5)
                #6  0x00007f28a4901032 n/a (libglib-2.0.so.0 + 0x64032)
                #7  0x00007f28a4937ad4 n/a (libglib-2.0.so.0 + 0x9aad4)
                #8  0x00007f28a50981b9 n/a (libc.so.6 + 0x981b9)
                #9  0x00007f28a511d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1887:
                #0  0x00007f28a50a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f28a5094abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f28a5094e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f28a509766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f289ca2e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007f289c9e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007f289ca2e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007f28a50981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f28a511d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1865:
                #0  0x00007f28a50a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f28a5094abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f28a5094e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f28a509766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f289ca2e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007f289c9e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007f289ca2e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007f28a50981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f28a511d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1885:
                #0  0x00007f28a50a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f28a5094abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f28a5094e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f28a509766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f289ca2e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007f289c9e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007f289ca2e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007f28a50981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f28a511d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1888:
                #0  0x00007f28a50a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f28a5094abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f28a5094e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f28a509766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f289ca2e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007f289c9e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007f289ca2e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007f28a50981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f28a511d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1902:
                #0  0x00007f28a50a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f28a5094abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f28a5094b04 n/a (libc.so.6 + 0x94b04)
                #3  0x00007f28a510fff6 ppoll (libc.so.6 + 0x10fff6)
                #4  0x00007f28a4900edf n/a (libglib-2.0.so.0 + 0x63edf)
                #5  0x00007f28a49011a7 g_main_loop_run (libglib-2.0.so.0 + 0x641a7)
                #6  0x00007f28a6659974 n/a (libgio-2.0.so.0 + 0x127974)
                #7  0x00007f28a4937ad4 n/a (libglib-2.0.so.0 + 0x9aad4)
                #8  0x00007f28a50981b9 n/a (libc.so.6 + 0x981b9)
                #9  0x00007f28a511d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 1894:
                #0  0x00007f28a50a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f28a5094abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f28a5094e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f28a509766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f289ca2e74e n/a (libgallium-26.1.2-arch1.1.so + 0x62e74e)
                #5  0x00007f289c9e34bd n/a (libgallium-26.1.2-arch1.1.so + 0x5e34bd)
                #6  0x00007f289ca2e68d n/a (libgallium-26.1.2-arch1.1.so + 0x62e68d)
                #7  0x00007f28a50981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f28a511d21c n/a (libc.so.6 + 0x11d21c)
                ELF object binary architecture: AMD x86-64

           PID: 2040 (Hyprland)
           UID: 1000 (user)
           GID: 1000 (user)
        Signal: 6 (ABRT)
     Timestamp: Mon 2026-06-22 11:05:51 +07 (2 weeks 5 days ago)
  Command Line: Hyprland --watchdog-fd 4
    Executable: /usr/bin/Hyprland
 Control Group: /user.slice/user-1000.slice/session-2.scope
          Unit: session-2.scope
         Slice: user-1000.slice
       Session: 2
     Owner UID: 1000 (user)
       Boot ID: 53d0bd2360d04383b2012ec35c4467e5
    Machine ID: dcdbfa7168e844aa85ace6b247d4df91
      Hostname: gemn
       Storage: /var/lib/systemd/coredump/core.Hyprland.1000.53d0bd2360d04383b2012ec35c4467e5.2040.1782101151000>
       Message: Process 2040 (Hyprland) of user 1000 dumped core.
                
                Stack trace of thread 2040:
                #0  0x00007f1fd6e256e6 abort (libc.so.6 + 0x256e6)
                #1  0x00005640f70aeae4 n/a (Hyprland + 0x3bfae4)
                #2  0x00007f1fd6e3e8f0 n/a (libc.so.6 + 0x3e8f0)
                #3  0x00007f1fd6e9a29c n/a (libc.so.6 + 0x9a29c)
                #4  0x00007f1fd6e3e7d0 raise (libc.so.6 + 0x3e7d0)
                #5  0x00005640f76c1f8e _ZN6Render2GL15CHyprOpenGLImpl5beginEN9Hyprutils6Memory14CSharedPointerI8>
                #6  0x00005640f76ac041 _ZN6Render2GL15CHyprGLRenderer19beginRenderInternalEN9Hyprutils6Memory14C>
                #7  0x00005640f770f8e4 _ZN6Render13IHyprRenderer11beginRenderEN9Hyprutils6Memory14CSharedPointer>
                #8  0x00005640f7715ffd _ZN6Render13IHyprRenderer13renderMonitorEN9Hyprutils6Memory14CSharedPoint>
                #9  0x00005640f72e062c _ZN22CMonitorFrameScheduler7onFrameEv (Hyprland + 0x5f162c)
                #10 0x00007f1fd8b0fe8d _ZN9Hyprutils6Signal15CSignalListener12emitInternalEPv (libhyprutils.so.1>
                #11 0x00007f1fd8b10353 _ZN9Hyprutils6Signal11CSignalBase12emitInternalEPv (libhyprutils.so.12 + >
                #12 0x00007f1fd8c20fa8 n/a (libaquamarine.so.11 + 0xb4fa8)
                #13 0x00007f1fd873ee95 drmHandleEvent (libdrm.so.2 + 0xee95)
                #14 0x00007f1fd8c351ca n/a (libaquamarine.so.11 + 0xc91ca)
                #15 0x00005640f741801a n/a (Hyprland + 0x72901a)
                #16 0x00007f1fd89c83d2 wl_event_loop_dispatch (libwayland-server.so.0 + 0xa3d2)
                #17 0x00007f1fd89ca567 wl_display_run (libwayland-server.so.0 + 0xc567)
                #18 0x00005640f741b620 _ZN17CEventLoopManager9enterLoopEv (Hyprland + 0x72c620)
                #19 0x00005640f6f676d5 main (Hyprland + 0x2786d5)
                #20 0x00007f1fd6e27741 n/a (libc.so.6 + 0x27741)
                #21 0x00007f1fd6e27879 __libc_start_main (libc.so.6 + 0x27879)
                #22 0x00005640f7098a75 _start (Hyprland + 0x3a9a75)
                
                Stack trace of thread 2055:
                #0  0x00007f1fd6ea0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f1fd6e94abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f1fd6e94e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f1fd6e9766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f1fcea2e74e n/a (libgallium-26.1.2-arch1.2.so + 0x62e74e)
                #5  0x00007f1fce9e34bd n/a (libgallium-26.1.2-arch1.2.so + 0x5e34bd)
                #6  0x00007f1fcea2e68d n/a (libgallium-26.1.2-arch1.2.so + 0x62e68d)
                #7  0x00007f1fd6e981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f1fd6f1d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2043:
                #0  0x00007f1fd6ea0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f1fd6e94abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f1fd6e94e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f1fd6e97aec pthread_cond_clockwait (libc.so.6 + 0x97aec)
                #4  0x00007f1fd8a61042 _ZN12Hyprgraphics22CAsyncResourceGatherer18asyncAssetSpinLockEv (libhyprg>
                #5  0x00007f1fd72eb919 n/a (libstdc++.so.6 + 0xeb919)
                #6  0x00007f1fd6e981b9 n/a (libc.so.6 + 0x981b9)
                #7  0x00007f1fd6f1d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2090:
                #0  0x00007f1fd6ea0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f1fd6e94abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f1fd6e94e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f1fd6e9766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f1fcea2e74e n/a (libgallium-26.1.2-arch1.2.so + 0x62e74e)
                #5  0x00007f1fce9e34bd n/a (libgallium-26.1.2-arch1.2.so + 0x5e34bd)
                #6  0x00007f1fcea2e68d n/a (libgallium-26.1.2-arch1.2.so + 0x62e68d)
                #7  0x00007f1fd6e981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f1fd6f1d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2079:
                #0  0x00007f1fd6ea0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f1fd6e94abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f1fd6e94e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f1fd6e9766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f1fcea2e74e n/a (libgallium-26.1.2-arch1.2.so + 0x62e74e)
                #5  0x00007f1fce9e34bd n/a (libgallium-26.1.2-arch1.2.so + 0x5e34bd)
                #6  0x00007f1fcea2e68d n/a (libgallium-26.1.2-arch1.2.so + 0x62e68d)
                #7  0x00007f1fd6e981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f1fd6f1d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2084:
                #0  0x00007f1fd6ea0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f1fd6e94abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f1fd6e94e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f1fd6e9766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f1fcea2e74e n/a (libgallium-26.1.2-arch1.2.so + 0x62e74e)
                #5  0x00007f1fce9e34bd n/a (libgallium-26.1.2-arch1.2.so + 0x5e34bd)
                #6  0x00007f1fcea2e68d n/a (libgallium-26.1.2-arch1.2.so + 0x62e68d)
                #7  0x00007f1fd6e981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f1fd6f1d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2078:
                #0  0x00007f1fd6ea0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f1fd6e94abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f1fd6e94e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f1fd6e9766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f1fcea2e74e n/a (libgallium-26.1.2-arch1.2.so + 0x62e74e)
                #5  0x00007f1fce9e34bd n/a (libgallium-26.1.2-arch1.2.so + 0x5e34bd)
                #6  0x00007f1fcea2e68d n/a (libgallium-26.1.2-arch1.2.so + 0x62e68d)
                #7  0x00007f1fd6e981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f1fd6f1d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2093:
                #0  0x00007f1fd6ea0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f1fd6e94abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f1fd6e94b04 n/a (libc.so.6 + 0x94b04)
                #3  0x00007f1fd6f0fff6 ppoll (libc.so.6 + 0x10fff6)
                #4  0x00007f1fd6d00edf n/a (libglib-2.0.so.0 + 0x63edf)
                #5  0x00007f1fd6d00fe5 g_main_context_iteration (libglib-2.0.so.0 + 0x63fe5)
                #6  0x00007f1fd6d01032 n/a (libglib-2.0.so.0 + 0x64032)
                #7  0x00007f1fd6d37ad4 n/a (libglib-2.0.so.0 + 0x9aad4)
                #8  0x00007f1fd6e981b9 n/a (libc.so.6 + 0x981b9)
                #9  0x00007f1fd6f1d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2085:
                #0  0x00007f1fd6ea0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f1fd6e94abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f1fd6e94e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f1fd6e9766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f1fcea2e74e n/a (libgallium-26.1.2-arch1.2.so + 0x62e74e)
                #5  0x00007f1fce9e34bd n/a (libgallium-26.1.2-arch1.2.so + 0x5e34bd)
                #6  0x00007f1fcea2e68d n/a (libgallium-26.1.2-arch1.2.so + 0x62e68d)
                #7  0x00007f1fd6e981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f1fd6f1d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2091:
                #0  0x00007f1fd6ea0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f1fd6e94abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f1fd6e94e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f1fd6e9766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f1fcea2e74e n/a (libgallium-26.1.2-arch1.2.so + 0x62e74e)
                #5  0x00007f1fce9e34bd n/a (libgallium-26.1.2-arch1.2.so + 0x5e34bd)
                #6  0x00007f1fcea2e68d n/a (libgallium-26.1.2-arch1.2.so + 0x62e68d)
                #7  0x00007f1fd6e981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f1fd6f1d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2092:
                #0  0x00007f1fd6f1af9d syscall (libc.so.6 + 0x11af9d)
                #1  0x00007f1fd6d2e0de g_cond_wait (libglib-2.0.so.0 + 0x910de)
                #2  0x00007f1fd6cc354d n/a (libglib-2.0.so.0 + 0x2654d)
                #3  0x00007f1fd6d37fd7 n/a (libglib-2.0.so.0 + 0x9afd7)
                #4  0x00007f1fd6d37ad4 n/a (libglib-2.0.so.0 + 0x9aad4)
                #5  0x00007f1fd6e981b9 n/a (libc.so.6 + 0x981b9)
                #6  0x00007f1fd6f1d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2094:
                #0  0x00007f1fd6ea0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f1fd6e94abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f1fd6e94b04 n/a (libc.so.6 + 0x94b04)
                #3  0x00007f1fd6f0fff6 ppoll (libc.so.6 + 0x10fff6)
                #4  0x00007f1fd6d00edf n/a (libglib-2.0.so.0 + 0x63edf)
                #5  0x00007f1fd6d00fe5 g_main_context_iteration (libglib-2.0.so.0 + 0x63fe5)
                #6  0x00007f1fd4a797be n/a (libdconfsettings.so + 0x77be)
                #7  0x00007f1fd6d37ad4 n/a (libglib-2.0.so.0 + 0x9aad4)
                #8  0x00007f1fd6e981b9 n/a (libc.so.6 + 0x981b9)
                #9  0x00007f1fd6f1d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2056:
                #0  0x00007f1fd6ea0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f1fd6e94abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f1fd6e94e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f1fd6e9766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f1fcea2e74e n/a (libgallium-26.1.2-arch1.2.so + 0x62e74e)
                #5  0x00007f1fce9e34bd n/a (libgallium-26.1.2-arch1.2.so + 0x5e34bd)
                #6  0x00007f1fcea2e68d n/a (libgallium-26.1.2-arch1.2.so + 0x62e68d)
                #7  0x00007f1fd6e981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f1fd6f1d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2057:
                #0  0x00007f1fd6ea0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f1fd6e94abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f1fd6e94e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f1fd6e9766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f1fcea2e74e n/a (libgallium-26.1.2-arch1.2.so + 0x62e74e)
                #5  0x00007f1fce9e34bd n/a (libgallium-26.1.2-arch1.2.so + 0x5e34bd)
                #6  0x00007f1fcea2e68d n/a (libgallium-26.1.2-arch1.2.so + 0x62e68d)
                #7  0x00007f1fd6e981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f1fd6f1d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2097:
                #0  0x00007f1fd6ea0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f1fd6e94abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f1fd6e94b04 n/a (libc.so.6 + 0x94b04)
                #3  0x00007f1fd6f0fff6 ppoll (libc.so.6 + 0x10fff6)
                #4  0x00007f1fd6d00edf n/a (libglib-2.0.so.0 + 0x63edf)
                #5  0x00007f1fd6d011a7 g_main_loop_run (libglib-2.0.so.0 + 0x641a7)
                #6  0x00007f1fd85f2974 n/a (libgio-2.0.so.0 + 0x127974)
                #7  0x00007f1fd6d37ad4 n/a (libglib-2.0.so.0 + 0x9aad4)
                #8  0x00007f1fd6e981b9 n/a (libc.so.6 + 0x981b9)
                #9  0x00007f1fd6f1d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2060:
                #0  0x00007f1fd6ea0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f1fd6e94abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f1fd6e94e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f1fd6e9766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f1fcea2e74e n/a (libgallium-26.1.2-arch1.2.so + 0x62e74e)
                #5  0x00007f1fce9e34bd n/a (libgallium-26.1.2-arch1.2.so + 0x5e34bd)
                #6  0x00007f1fcea2e68d n/a (libgallium-26.1.2-arch1.2.so + 0x62e68d)
                #7  0x00007f1fd6e981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f1fd6f1d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2128:
                #0  0x00007f1fd6f1af9d syscall (libc.so.6 + 0x11af9d)
                #1  0x00007f1fd6d2e0de g_cond_wait (libglib-2.0.so.0 + 0x910de)
                #2  0x00007f1fd6cc354d n/a (libglib-2.0.so.0 + 0x2654d)
                #3  0x00007f1fd6cc35c6 g_async_queue_pop (libglib-2.0.so.0 + 0x265c6)
                #4  0x00007f1fd70b351c n/a (libpangoft2-1.0.so.0 + 0xc51c)
                #5  0x00007f1fd6d37ad4 n/a (libglib-2.0.so.0 + 0x9aad4)
                #6  0x00007f1fd6e981b9 n/a (libc.so.6 + 0x981b9)
                #7  0x00007f1fd6f1d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2082:
                #0  0x00007f1fd6ea0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f1fd6e94abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f1fd6e94e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f1fd6e9766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f1fcea2e74e n/a (libgallium-26.1.2-arch1.2.so + 0x62e74e)
                #5  0x00007f1fce9e34bd n/a (libgallium-26.1.2-arch1.2.so + 0x5e34bd)
                #6  0x00007f1fcea2e68d n/a (libgallium-26.1.2-arch1.2.so + 0x62e68d)
                #7  0x00007f1fd6e981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f1fd6f1d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2719:
                #0  0x00007f1fd6ea0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f1fd6e94abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f1fd6e94e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f1fd6e9766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f1fcea2e74e n/a (libgallium-26.1.2-arch1.2.so + 0x62e74e)
                #5  0x00007f1fce9e34bd n/a (libgallium-26.1.2-arch1.2.so + 0x5e34bd)
                #6  0x00007f1fcea2e68d n/a (libgallium-26.1.2-arch1.2.so + 0x62e68d)
                #7  0x00007f1fd6e981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f1fd6f1d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2731:
                #0  0x00007f1fd6ea0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f1fd6e94abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f1fd6e94e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f1fd6e9766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f1fcea2e74e n/a (libgallium-26.1.2-arch1.2.so + 0x62e74e)
                #5  0x00007f1fce9e34bd n/a (libgallium-26.1.2-arch1.2.so + 0x5e34bd)
                #6  0x00007f1fcea2e68d n/a (libgallium-26.1.2-arch1.2.so + 0x62e68d)
                #7  0x00007f1fd6e981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f1fd6f1d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2059:
                #0  0x00007f1fd6ea0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f1fd6e94abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f1fd6e94e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f1fd6e9766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f1fcea2e74e n/a (libgallium-26.1.2-arch1.2.so + 0x62e74e)
                #5  0x00007f1fce9e34bd n/a (libgallium-26.1.2-arch1.2.so + 0x5e34bd)
                #6  0x00007f1fcea2e68d n/a (libgallium-26.1.2-arch1.2.so + 0x62e68d)
                #7  0x00007f1fd6e981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f1fd6f1d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2061:
                #0  0x00007f1fd6ea0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f1fd6e94abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f1fd6e94e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f1fd6e9766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f1fcea2e74e n/a (libgallium-26.1.2-arch1.2.so + 0x62e74e)
                #5  0x00007f1fce9e34bd n/a (libgallium-26.1.2-arch1.2.so + 0x5e34bd)
                #6  0x00007f1fcea2e68d n/a (libgallium-26.1.2-arch1.2.so + 0x62e68d)
                #7  0x00007f1fd6e981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f1fd6f1d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2077:
                #0  0x00007f1fd6ea0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f1fd6e94abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f1fd6e94e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f1fd6e9766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f1fcea2e74e n/a (libgallium-26.1.2-arch1.2.so + 0x62e74e)
                #5  0x00007f1fce9e34bd n/a (libgallium-26.1.2-arch1.2.so + 0x5e34bd)
                #6  0x00007f1fcea2e68d n/a (libgallium-26.1.2-arch1.2.so + 0x62e68d)
                #7  0x00007f1fd6e981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f1fd6f1d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2080:
                #0  0x00007f1fd6ea0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f1fd6e94abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f1fd6e94e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f1fd6e9766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f1fcea2e74e n/a (libgallium-26.1.2-arch1.2.so + 0x62e74e)
                #5  0x00007f1fce9e34bd n/a (libgallium-26.1.2-arch1.2.so + 0x5e34bd)
                #6  0x00007f1fcea2e68d n/a (libgallium-26.1.2-arch1.2.so + 0x62e68d)
                #7  0x00007f1fd6e981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f1fd6f1d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2081:
                #0  0x00007f1fd6ea0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f1fd6e94abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f1fd6e94e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f1fd6e9766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f1fcea2e74e n/a (libgallium-26.1.2-arch1.2.so + 0x62e74e)
                #5  0x00007f1fce9e34bd n/a (libgallium-26.1.2-arch1.2.so + 0x5e34bd)
                #6  0x00007f1fcea2e68d n/a (libgallium-26.1.2-arch1.2.so + 0x62e68d)
                #7  0x00007f1fd6e981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f1fd6f1d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2083:
                #0  0x00007f1fd6ea0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f1fd6e94abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f1fd6e94e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f1fd6e9766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f1fcea2e74e n/a (libgallium-26.1.2-arch1.2.so + 0x62e74e)
                #5  0x00007f1fce9e34bd n/a (libgallium-26.1.2-arch1.2.so + 0x5e34bd)
                #6  0x00007f1fcea2e68d n/a (libgallium-26.1.2-arch1.2.so + 0x62e68d)
                #7  0x00007f1fd6e981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f1fd6f1d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2089:
                #0  0x00007f1fd6ea0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f1fd6e94abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f1fd6e94e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f1fd6e9766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f1fcea2e74e n/a (libgallium-26.1.2-arch1.2.so + 0x62e74e)
                #5  0x00007f1fce9e34bd n/a (libgallium-26.1.2-arch1.2.so + 0x5e34bd)
                #6  0x00007f1fcea2e68d n/a (libgallium-26.1.2-arch1.2.so + 0x62e68d)
                #7  0x00007f1fd6e981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f1fd6f1d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2058:
                #0  0x00007f1fd6ea0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f1fd6e94abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f1fd6e94e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f1fd6e9766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f1fcea2e74e n/a (libgallium-26.1.2-arch1.2.so + 0x62e74e)
                #5  0x00007f1fce9e34bd n/a (libgallium-26.1.2-arch1.2.so + 0x5e34bd)
                #6  0x00007f1fcea2e68d n/a (libgallium-26.1.2-arch1.2.so + 0x62e68d)
                #7  0x00007f1fd6e981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f1fd6f1d21c n/a (libc.so.6 + 0x11d21c)
                ELF object binary architecture: AMD x86-64

           PID: 2526 (Hyprland)
           UID: 1000 (user)
           GID: 1000 (user)
        Signal: 6 (ABRT)
     Timestamp: Mon 2026-06-22 23:07:50 +07 (2 weeks 4 days ago)
  Command Line: Hyprland --watchdog-fd 4
    Executable: /usr/bin/Hyprland
 Control Group: /user.slice/user-1000.slice/session-2.scope
          Unit: session-2.scope
         Slice: user-1000.slice
       Session: 2
     Owner UID: 1000 (user)
       Boot ID: dad7535339d74e46b504b946a0acc0e7
    Machine ID: dcdbfa7168e844aa85ace6b247d4df91
      Hostname: gemn
       Storage: /var/lib/systemd/coredump/core.Hyprland.1000.dad7535339d74e46b504b946a0acc0e7.2526.1782144470000>
       Message: Process 2526 (Hyprland) of user 1000 dumped core.
                
                Stack trace of thread 2526:
                #0  0x00007f998b2256e6 abort (libc.so.6 + 0x256e6)
                #1  0x000055cc9937eae4 n/a (Hyprland + 0x3bfae4)
                #2  0x00007f998b23e8f0 n/a (libc.so.6 + 0x3e8f0)
                #3  0x00007f998b29a29c n/a (libc.so.6 + 0x9a29c)
                #4  0x00007f998b23e7d0 raise (libc.so.6 + 0x3e7d0)
                #5  0x000055cc99991f8e _ZN6Render2GL15CHyprOpenGLImpl5beginEN9Hyprutils6Memory14CSharedPointerI8>
                #6  0x000055cc9997c041 _ZN6Render2GL15CHyprGLRenderer19beginRenderInternalEN9Hyprutils6Memory14C>
                #7  0x000055cc999df8e4 _ZN6Render13IHyprRenderer11beginRenderEN9Hyprutils6Memory14CSharedPointer>
                #8  0x000055cc999e5ffd _ZN6Render13IHyprRenderer13renderMonitorEN9Hyprutils6Memory14CSharedPoint>
                #9  0x000055cc995b062c _ZN22CMonitorFrameScheduler7onFrameEv (Hyprland + 0x5f162c)
                #10 0x00007f998ce35e8d _ZN9Hyprutils6Signal15CSignalListener12emitInternalEPv (libhyprutils.so.1>
                #11 0x00007f998ce36353 _ZN9Hyprutils6Signal11CSignalBase12emitInternalEPv (libhyprutils.so.12 + >
                #12 0x00007f998cf46fa8 n/a (libaquamarine.so.11 + 0xb4fa8)
                #13 0x00007f998ca64e95 drmHandleEvent (libdrm.so.2 + 0xee95)
                #14 0x00007f998cf5b1ca n/a (libaquamarine.so.11 + 0xc91ca)
                #15 0x000055cc996e801a n/a (Hyprland + 0x72901a)
                #16 0x00007f998ccee3d2 wl_event_loop_dispatch (libwayland-server.so.0 + 0xa3d2)
                #17 0x00007f998ccf0567 wl_display_run (libwayland-server.so.0 + 0xc567)
                #18 0x000055cc996eb620 _ZN17CEventLoopManager9enterLoopEv (Hyprland + 0x72c620)
                #19 0x000055cc992376d5 main (Hyprland + 0x2786d5)
                #20 0x00007f998b227741 n/a (libc.so.6 + 0x27741)
                #21 0x00007f998b227879 __libc_start_main (libc.so.6 + 0x27879)
                #22 0x000055cc99368a75 _start (Hyprland + 0x3a9a75)
                
                Stack trace of thread 2529:
                #0  0x00007f998b2a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f998b294abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f998b294e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f998b297aec pthread_cond_clockwait (libc.so.6 + 0x97aec)
                #4  0x00007f998cd87042 _ZN12Hyprgraphics22CAsyncResourceGatherer18asyncAssetSpinLockEv (libhyprg>
                #5  0x00007f998b6eb919 n/a (libstdc++.so.6 + 0xeb919)
                #6  0x00007f998b2981b9 n/a (libc.so.6 + 0x981b9)
                #7  0x00007f998b31d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2541:
                #0  0x00007f998b2a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f998b294abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f998b294e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f998b29766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f9982e2e74e n/a (libgallium-26.1.2-arch1.2.so + 0x62e74e)
                #5  0x00007f9982de34bd n/a (libgallium-26.1.2-arch1.2.so + 0x5e34bd)
                #6  0x00007f9982e2e68d n/a (libgallium-26.1.2-arch1.2.so + 0x62e68d)
                #7  0x00007f998b2981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f998b31d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2545:
                #0  0x00007f998b2a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f998b294abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f998b294e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f998b29766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f9982e2e74e n/a (libgallium-26.1.2-arch1.2.so + 0x62e74e)
                #5  0x00007f9982de34bd n/a (libgallium-26.1.2-arch1.2.so + 0x5e34bd)
                #6  0x00007f9982e2e68d n/a (libgallium-26.1.2-arch1.2.so + 0x62e68d)
                #7  0x00007f998b2981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f998b31d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2546:
                #0  0x00007f998b2a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f998b294abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f998b294e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f998b29766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f9982e2e74e n/a (libgallium-26.1.2-arch1.2.so + 0x62e74e)
                #5  0x00007f9982de34bd n/a (libgallium-26.1.2-arch1.2.so + 0x5e34bd)
                #6  0x00007f9982e2e68d n/a (libgallium-26.1.2-arch1.2.so + 0x62e68d)
                #7  0x00007f998b2981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f998b31d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2564:
                #0  0x00007f998b2a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f998b294abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f998b294e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f998b29766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f9982e2e74e n/a (libgallium-26.1.2-arch1.2.so + 0x62e74e)
                #5  0x00007f9982de34bd n/a (libgallium-26.1.2-arch1.2.so + 0x5e34bd)
                #6  0x00007f9982e2e68d n/a (libgallium-26.1.2-arch1.2.so + 0x62e68d)
                #7  0x00007f998b2981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f998b31d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 3264:
                #0  0x00007f998b2a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f998b294abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f998b294e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f998b29766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f9982e2e74e n/a (libgallium-26.1.2-arch1.2.so + 0x62e74e)
                #5  0x00007f9982de34bd n/a (libgallium-26.1.2-arch1.2.so + 0x5e34bd)
                #6  0x00007f9982e2e68d n/a (libgallium-26.1.2-arch1.2.so + 0x62e68d)
                #7  0x00007f998b2981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f998b31d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2576:
                #0  0x00007f998b2a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f998b294abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f998b294e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f998b29766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f9982e2e74e n/a (libgallium-26.1.2-arch1.2.so + 0x62e74e)
                #5  0x00007f9982de34bd n/a (libgallium-26.1.2-arch1.2.so + 0x5e34bd)
                #6  0x00007f9982e2e68d n/a (libgallium-26.1.2-arch1.2.so + 0x62e68d)
                #7  0x00007f998b2981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f998b31d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2570:
                #0  0x00007f998b2a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f998b294abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f998b294e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f998b29766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f9982e2e74e n/a (libgallium-26.1.2-arch1.2.so + 0x62e74e)
                #5  0x00007f9982de34bd n/a (libgallium-26.1.2-arch1.2.so + 0x5e34bd)
                #6  0x00007f9982e2e68d n/a (libgallium-26.1.2-arch1.2.so + 0x62e68d)
                #7  0x00007f998b2981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f998b31d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2565:
                #0  0x00007f998b2a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f998b294abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f998b294e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f998b29766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f9982e2e74e n/a (libgallium-26.1.2-arch1.2.so + 0x62e74e)
                #5  0x00007f9982de34bd n/a (libgallium-26.1.2-arch1.2.so + 0x5e34bd)
                #6  0x00007f9982e2e68d n/a (libgallium-26.1.2-arch1.2.so + 0x62e68d)
                #7  0x00007f998b2981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f998b31d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2580:
                #0  0x00007f998b2a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f998b294abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f998b294b04 n/a (libc.so.6 + 0x94b04)
                #3  0x00007f998b30fff6 ppoll (libc.so.6 + 0x10fff6)
                #4  0x00007f998ab00edf n/a (libglib-2.0.so.0 + 0x63edf)
                #5  0x00007f998ab00fe5 g_main_context_iteration (libglib-2.0.so.0 + 0x63fe5)
                #6  0x00007f99889a37be n/a (libdconfsettings.so + 0x77be)
                #7  0x00007f998ab37ad4 n/a (libglib-2.0.so.0 + 0x9aad4)
                #8  0x00007f998b2981b9 n/a (libc.so.6 + 0x981b9)
                #9  0x00007f998b31d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2544:
                #0  0x00007f998b2a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f998b294abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f998b294e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f998b29766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f9982e2e74e n/a (libgallium-26.1.2-arch1.2.so + 0x62e74e)
                #5  0x00007f9982de34bd n/a (libgallium-26.1.2-arch1.2.so + 0x5e34bd)
                #6  0x00007f9982e2e68d n/a (libgallium-26.1.2-arch1.2.so + 0x62e68d)
                #7  0x00007f998b2981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f998b31d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2571:
                #0  0x00007f998b2a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f998b294abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f998b294e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f998b29766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f9982e2e74e n/a (libgallium-26.1.2-arch1.2.so + 0x62e74e)
                #5  0x00007f9982de34bd n/a (libgallium-26.1.2-arch1.2.so + 0x5e34bd)
                #6  0x00007f9982e2e68d n/a (libgallium-26.1.2-arch1.2.so + 0x62e68d)
                #7  0x00007f998b2981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f998b31d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2583:
                #0  0x00007f998b2a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f998b294abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f998b294b04 n/a (libc.so.6 + 0x94b04)
                #3  0x00007f998b30fff6 ppoll (libc.so.6 + 0x10fff6)
                #4  0x00007f998ab00edf n/a (libglib-2.0.so.0 + 0x63edf)
                #5  0x00007f998ab011a7 g_main_loop_run (libglib-2.0.so.0 + 0x641a7)
                #6  0x00007f998c918974 n/a (libgio-2.0.so.0 + 0x127974)
                #7  0x00007f998ab37ad4 n/a (libglib-2.0.so.0 + 0x9aad4)
                #8  0x00007f998b2981b9 n/a (libc.so.6 + 0x981b9)
                #9  0x00007f998b31d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2568:
                #0  0x00007f998b2a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f998b294abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f998b294e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f998b29766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f9982e2e74e n/a (libgallium-26.1.2-arch1.2.so + 0x62e74e)
                #5  0x00007f9982de34bd n/a (libgallium-26.1.2-arch1.2.so + 0x5e34bd)
                #6  0x00007f9982e2e68d n/a (libgallium-26.1.2-arch1.2.so + 0x62e68d)
                #7  0x00007f998b2981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f998b31d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2577:
                #0  0x00007f998b2a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f998b294abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f998b294e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f998b29766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f9982e2e74e n/a (libgallium-26.1.2-arch1.2.so + 0x62e74e)
                #5  0x00007f9982de34bd n/a (libgallium-26.1.2-arch1.2.so + 0x5e34bd)
                #6  0x00007f9982e2e68d n/a (libgallium-26.1.2-arch1.2.so + 0x62e68d)
                #7  0x00007f998b2981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f998b31d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2579:
                #0  0x00007f998b2a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f998b294abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f998b294b04 n/a (libc.so.6 + 0x94b04)
                #3  0x00007f998b30fff6 ppoll (libc.so.6 + 0x10fff6)
                #4  0x00007f998ab00edf n/a (libglib-2.0.so.0 + 0x63edf)
                #5  0x00007f998ab00fe5 g_main_context_iteration (libglib-2.0.so.0 + 0x63fe5)
                #6  0x00007f998ab01032 n/a (libglib-2.0.so.0 + 0x64032)
                #7  0x00007f998ab37ad4 n/a (libglib-2.0.so.0 + 0x9aad4)
                #8  0x00007f998b2981b9 n/a (libc.so.6 + 0x981b9)
                #9  0x00007f998b31d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2543:
                #0  0x00007f998b2a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f998b294abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f998b294e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f998b29766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f9982e2e74e n/a (libgallium-26.1.2-arch1.2.so + 0x62e74e)
                #5  0x00007f9982de34bd n/a (libgallium-26.1.2-arch1.2.so + 0x5e34bd)
                #6  0x00007f9982e2e68d n/a (libgallium-26.1.2-arch1.2.so + 0x62e68d)
                #7  0x00007f998b2981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f998b31d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2575:
                #0  0x00007f998b2a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f998b294abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f998b294e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f998b29766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f9982e2e74e n/a (libgallium-26.1.2-arch1.2.so + 0x62e74e)
                #5  0x00007f9982de34bd n/a (libgallium-26.1.2-arch1.2.so + 0x5e34bd)
                #6  0x00007f9982e2e68d n/a (libgallium-26.1.2-arch1.2.so + 0x62e68d)
                #7  0x00007f998b2981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f998b31d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2578:
                #0  0x00007f998b31af9d syscall (libc.so.6 + 0x11af9d)
                #1  0x00007f998ab2e0de g_cond_wait (libglib-2.0.so.0 + 0x910de)
                #2  0x00007f998aac354d n/a (libglib-2.0.so.0 + 0x2654d)
                #3  0x00007f998ab37fd7 n/a (libglib-2.0.so.0 + 0x9afd7)
                #4  0x00007f998ab37ad4 n/a (libglib-2.0.so.0 + 0x9aad4)
                #5  0x00007f998b2981b9 n/a (libc.so.6 + 0x981b9)
                #6  0x00007f998b31d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2547:
                #0  0x00007f998b2a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f998b294abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f998b294e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f998b29766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f9982e2e74e n/a (libgallium-26.1.2-arch1.2.so + 0x62e74e)
                #5  0x00007f9982de34bd n/a (libgallium-26.1.2-arch1.2.so + 0x5e34bd)
                #6  0x00007f9982e2e68d n/a (libgallium-26.1.2-arch1.2.so + 0x62e68d)
                #7  0x00007f998b2981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f998b31d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2615:
                #0  0x00007f998b31af9d syscall (libc.so.6 + 0x11af9d)
                #1  0x00007f998ab2e0de g_cond_wait (libglib-2.0.so.0 + 0x910de)
                #2  0x00007f998aac354d n/a (libglib-2.0.so.0 + 0x2654d)
                #3  0x00007f998aac35c6 g_async_queue_pop (libglib-2.0.so.0 + 0x265c6)
                #4  0x00007f998b43451c n/a (libpangoft2-1.0.so.0 + 0xc51c)
                #5  0x00007f998ab37ad4 n/a (libglib-2.0.so.0 + 0x9aad4)
                #6  0x00007f998b2981b9 n/a (libc.so.6 + 0x981b9)
                #7  0x00007f998b31d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2588:
                #0  0x00007f998b2a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f998b294abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f998b294e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f998b29766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f9982e2e74e n/a (libgallium-26.1.2-arch1.2.so + 0x62e74e)
                #5  0x00007f9982de34bd n/a (libgallium-26.1.2-arch1.2.so + 0x5e34bd)
                #6  0x00007f9982e2e68d n/a (libgallium-26.1.2-arch1.2.so + 0x62e68d)
                #7  0x00007f998b2981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f998b31d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 66891:
                #0  0x00007f998b2a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f998b294abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f998b294e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f998b29766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f9982e2e74e n/a (libgallium-26.1.2-arch1.2.so + 0x62e74e)
                #5  0x00007f9982de34bd n/a (libgallium-26.1.2-arch1.2.so + 0x5e34bd)
                #6  0x00007f9982e2e68d n/a (libgallium-26.1.2-arch1.2.so + 0x62e68d)
                #7  0x00007f998b2981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f998b31d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2569:
                #0  0x00007f998b2a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f998b294abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f998b294e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f998b29766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f9982e2e74e n/a (libgallium-26.1.2-arch1.2.so + 0x62e74e)
                #5  0x00007f9982de34bd n/a (libgallium-26.1.2-arch1.2.so + 0x5e34bd)
                #6  0x00007f9982e2e68d n/a (libgallium-26.1.2-arch1.2.so + 0x62e68d)
                #7  0x00007f998b2981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f998b31d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2563:
                #0  0x00007f998b2a0a52 n/a (libc.so.6 + 0xa0a52)
[user@gemn hyprland]$                 #7  0x00007f998b31d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2588:
                #0  0x00007f998b2a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f998b294abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f998b294e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f998b29766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f9982e2e74e n/a (libgallium-26.1.2-arch1.2.so + 0x62e74e)
                #5  0x00007f9982de34bd n/a (libgallium-26.1.2-arch1.2.so + 0x5e34bd)
                #6  0x00007f9982e2e68d n/a (libgallium-26.1.2-arch1.2.so + 0x62e68d)
                #7  0x00007f998b2981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f998b31d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 66891:
                #0  0x00007f998b2a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f998b294abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f998b294e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f998b29766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f9982e2e74e n/a (libgallium-26.1.2-arch1.2.so + 0x62e74e)
                #5  0x00007f9982de34bd n/a (libgallium-26.1.2-arch1.2.so + 0x5e34bd)
                #6  0x00007f9982e2e68d n/a (libgallium-26.1.2-arch1.2.so + 0x62e68d)
                #7  0x00007f998b2981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f998b31d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2569:
                #0  0x00007f998b2a0a52 n/a (libc.so.6 + 0xa0a52)
                #1  0x00007f998b294abc n/a (libc.so.6 + 0x94abc)
                #2  0x00007f998b294e07 n/a (libc.so.6 + 0x94e07)
                #3  0x00007f998b29766c pthread_cond_wait (libc.so.6 + 0x9766c)
                #4  0x00007f9982e2e74e n/a (libgallium-26.1.2-arch1.2.so + 0x62e74e)
                #5  0x00007f9982de34bd n/a (libgallium-26.1.2-arch1.2.so + 0x5e34bd)
                #6  0x00007f9982e2e68d n/a (libgallium-26.1.2-arch1.2.so + 0x62e68d)
                #7  0x00007f998b2981b9 n/a (libc.so.6 + 0x981b9)
                #8  0x00007f998b31d21c n/a (libc.so.6 + 0x11d21c)
                
                Stack trace of thread 2563:
                #0  0x


