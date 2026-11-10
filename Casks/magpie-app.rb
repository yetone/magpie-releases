cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3633"
  sha256 arm:   "73410e79e1f9c688bde7e9402c61c59b89cd0bd570d942810c37a453d4a50b6e",
         intel: "a7d8039640337a228777156627e6cae6ea2359592545868ae31073c69f2a51af"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
