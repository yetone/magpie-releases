cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.132"
  sha256 arm:   "4cf99baab47d2ae4311adea95f789f409a124823eecafb12d37c67f451e38782",
         intel: "5c94adaaec049f2f566acb61ee904f6be0dce6fa623baf597d8a21df79d73589"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
