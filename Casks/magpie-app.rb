cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4158"
  sha256 arm:   "05731ed59994f41e89c0717f568abde48580873d106dde8ebc5fa64ab2a900ce",
         intel: "90fe00ee54c4f4cfc1fe396f94cfc8fe44851d2ee4eccce3441c2ff16f6255ae"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
