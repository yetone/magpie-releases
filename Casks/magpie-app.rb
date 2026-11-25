cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4805"
  sha256 arm:   "34d179e363054f414d8941a4715004bd44451ae717c13c33d016e84f1c99628b",
         intel: "b7abc84071e8fceb969fe2e4230b2efcc41871e14409871380fbcde30dd952c0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
