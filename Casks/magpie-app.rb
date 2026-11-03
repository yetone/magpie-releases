cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2865"
  sha256 arm:   "a66c692f851f805d0eb96965f092f50b030ab08331bb15683581d66b07777d6a",
         intel: "3ff3ec2fc16c1c21634a458e1427b2c15b50312a4b5158f8ae1f74662f5e100b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
