cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2791"
  sha256 arm:   "0f9dc16d62a1251e9f3d3d9ad51dc384eb5478cec7b1b80a4b36856ad80fbeb4",
         intel: "3e8bc22566b06e2eabdc8bb260773365c316b1c9bc83991d57f31255bc90f78a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
