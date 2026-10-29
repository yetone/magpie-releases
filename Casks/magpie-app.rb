cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1994"
  sha256 arm:   "457a4dfb8a59dca05b594f999c847fb253c7e4a67c0ca1da4fecc50adfeec029",
         intel: "636b809e8507132c2d7f7eb4efe3d4c626e75274f5469ccdc5ffee471d20458f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
