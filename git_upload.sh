cd ~/public_kubernetes
git add *
git commit -m "$(date)"
git status
git push -u origin main
sleep 5
git ls-files
