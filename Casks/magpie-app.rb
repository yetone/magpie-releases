cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2318"
  sha256 arm:   "169705bd33c7fe3159d64ef86b4ed8da2419049dad1987430397410389827776",
         intel: "a4a5a79f6061f827a3f779638d8648e48c831282395e1cbef8369b975193fbf5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
