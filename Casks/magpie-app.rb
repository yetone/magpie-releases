cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2064"
  sha256 arm:   "ee7ceb4b8ae892634add164f68e961fcdb091e841fe6333823a255b423659f8c",
         intel: "c4f606e0e4b861376a3105d5c7ce159ce889a9b76e22c79016485aebd0086ccd"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
