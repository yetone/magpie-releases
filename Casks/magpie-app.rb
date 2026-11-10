cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3643"
  sha256 arm:   "37694bd62bee2215a2f9ce7007e019da300bf6e36200fad9eb5d77a7af9a7b33",
         intel: "d937e48e70b08b31067234caff4b6cd5411fb5620977ee8f6d0826f95f8d9e59"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
