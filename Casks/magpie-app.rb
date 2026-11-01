cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2590"
  sha256 arm:   "4f3eb08fc18d4b55f9db9b37a4c31ac41d15ff2032b6680625c3185713065410",
         intel: "b411016abd70d0eb51be16e4c685b2becc13f9eb2657df26cd4c3b2c50712fbe"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
