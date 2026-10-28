cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1927"
  sha256 arm:   "c1d0c4ce5d3f11f50022cbc0747804952115e8a4f043cd3d725769374d95ed37",
         intel: "82a9adbd0715f0c69fb981f5aeb42dcf5d43eb65bd7144f0496040e67e06d61d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
