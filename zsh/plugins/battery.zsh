function battery_prompt_info() {
	local info="$ZSH_THEME_BATTERY_PROMPT_PREFIX"

	if $(acpi -a | grep -q on); then
		info+="$ZSH_THEME_BATTERY_PROMPT_CHARGING"
	else
		info+="$ZSH_THEME_BATTERY_PROMPT_BATTERY"
	fi

	info+="$(acpi | grep -oP '\d+%')%"
	info+="$ZSH_THEME_BATTERY_PROMPT_SUFFIX"

	echo $info
}
