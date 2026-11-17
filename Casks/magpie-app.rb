cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4376"
  sha256 arm:   "777d35b2f6acca43f5cfd05bca2c03dc69cf0c813687015c84a32dcf2002639d",
         intel: "b44147294c8cb558040ebabd4ff54dc92f3735b9d6c84eeeb349e6b18547413c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
