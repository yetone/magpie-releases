cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3065"
  sha256 arm:   "8428ae66ede20cf31e20ac11a4c3f15b83c9052083a73145110532d02a1d6899",
         intel: "722aab4622c2eab30aa67f29e3a69d5713bb05d897890547aa113740a32d67ff"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
