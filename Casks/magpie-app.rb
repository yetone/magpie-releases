cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3353"
  sha256 arm:   "504ad9ef15bb5b8a9795acd81f4a4fa6685ec1a2eddc0783ed710f4e7615b0d3",
         intel: "26d8bb87241964b3f67a77635e03283d54cf512c03ef0f8badfa087a0e1e1df3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
