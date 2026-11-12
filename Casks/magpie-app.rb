cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3869"
  sha256 arm:   "adf6c2580193f1cf08ea367d9bd5f1a7e7058ed3e8ac14f57ba28b2ea4640809",
         intel: "71cc06e1fce3f495d9d1d8eb50edbbeae12fdcda76c9adfafc7340124fa1394a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
