cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4130"
  sha256 arm:   "23fed1db5469e1867ba6ff3384a580b4bd85efb6a0d31b163fe1468bdc08fafa",
         intel: "ec88f48912de2ad9e22b1dc04180c70b84e6031a01cb27516e06e15af45bc027"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
