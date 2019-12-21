clear
echo "\n---   BULK RENAMER   ---\n\n\n"
read -p "Directory of files: " dir
read -p "Word to find: " word1
read -p "Word to replace with: " word2
for file in "$dir"/*; do
  fileName=$(basename "$file")
  fileName_orig=$fileName
  fileName=${fileName//$word1/$word2}
  if [[ $fileName_orig != $fileName ]]; then
    echo "$fileName_orig -> $fileName"
    mv "$file" "$dir/$fileName"
  fi
done
