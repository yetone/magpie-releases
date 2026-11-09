cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3385"
  sha256 arm:   "4491ef40e3b490aa13a97e46cb7c35105da2009a29ead333242a429f4a6fb478",
         intel: "51b2ddbd04a930f669bae2111376a1f3f19b68720b65a3a3b7eaaf3cb216f36f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
