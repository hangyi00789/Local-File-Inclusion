echo -e "\e[1;31m //////////     //////////      //////////// \e[0m"
echo ""
echo -e "\e[1;31m ///     ///    ///      ///    /// \e[0m"
echo ""
echo -e "\e[1;31m ///      ///   ///       ///   /// \e[0m"
echo ""
echo -e "\e[1;31m //////////     ///       ///   ///////// \e[0m"
echo ""
echo -e "\e[1;31m ///     ///    ///      ///   /// \e[0m"
echo ""
echo -e "\e[1;31m ///      ///   ///      ///   /// \e[0m"
echo ""
echo -e "\e[1;31m ///////////xxxxx//////////xxxxx/// \e[1;32m Local File Inclusion \e[0m"
echo -e "\e[1;37m _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ \e[0m"
echo ""
echo -e "\e[1;36                    [*]Burmese Demon Force[*] \e[0m"
echo -e "\e[1;37m _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ \e[0m"
echo ""
echo -e "\e[1;33m Coder    : \e[1;35m Z847HG,RH4P50DY \e[0m"
echo -e '\e[1;33m Page link: \e[1;35m https://www.facebook.com/BurmeseDemomForce/ \e[0m'
echo ""
http="HTTP/1.1 200 ok"
read -p $'\e[1;31m Target site==> \e[0m' site
result1=$(curl -IKs $site | grep "HTTP/")
echo $result1
res1=$(echo "$result1" | grep -o '[200]\+')
while IFS= read -r LFI
do

result=$(curl -IKs $site/$LFI | grep "HTTP/")
echo $result
res=$(echo "$result" | grep -o '[200]\+')
echo -e "\e[1;35m Scanning site:: $site/$LFI \e[0m"
if [[ $res1 == $res ]];then
echo -e "\e[1;35m LFI scan Found:: $site/$LFI \e[0m"
#exit
else
echo -e "\e[1;31m Not found[×] \e[0m"
fi 
done < LFI