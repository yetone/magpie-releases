cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2244"
  sha256 arm:   "df0bbd256f5580f9f06645549cd89b0b53298f0de614f3dbd9f23153e965ada6",
         intel: "fe27281bb5925f55c883211c8a3a5a9ef2883144186f9c82c1ebeeacfddf71a0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
