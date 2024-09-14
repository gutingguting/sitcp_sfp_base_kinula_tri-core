onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+gig_ethernet_pcs_pma_0 -L xil_defaultlib -L xpm -L gtwizard_ultrascale_v1_7_6 -L gig_ethernet_pcs_pma_v16_1_6 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.gig_ethernet_pcs_pma_0 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {gig_ethernet_pcs_pma_0.udo}

run -all

endsim

quit -force
