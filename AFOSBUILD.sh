cd cmd/nuclei

go build

if [ $? -eq 0 ]
then
  # Result is OK! Just continue...
  echo "Go build... PASS!"
else
  # houston we have a problem
  exit 1
fi

strip nuclei

if [ $? -eq 0 ]
then
  # Result is OK! Just continue...
  echo "Strip... PASS!"
else
  # houston we have a problem
  exit 1
fi

cp -Rf nuclei /opt/ANDRAX/bin

if [ $? -eq 0 ]
then
  # Result is OK! Just continue...
  echo "Copy PACKAGE... PASS!"
else
  # houston we have a problem
  exit 1
fi
