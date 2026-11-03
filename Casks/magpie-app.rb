cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2860"
  sha256 arm:   "065738f0bdef19c367823be21d93fcdf8b9b6bc7fe3441a9c3fc9115971382d9",
         intel: "b7cc4ef28e5e258de989d8188133105d9199e5eb145d1c425b9bb07369c36696"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
