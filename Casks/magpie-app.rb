cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2524"
  sha256 arm:   "376620683d7bc704b565f3ac369fd4470a091e888d0fe4e8ca4b325b3065f228",
         intel: "ca89cb87031a5562b004e52e54d4fbb53a8bb61ee081c41b6cfb9847d7738115"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
