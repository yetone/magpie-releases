cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2329"
  sha256 arm:   "39b115b93001bdbfc4527b7fa73541639d9ad3ece2ee1cf75ef31e794bb78475",
         intel: "66b93c4b84c77b4e0b2d49cdcc1710b6ec518d3ff9c4bc85a24f2a5015299077"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
