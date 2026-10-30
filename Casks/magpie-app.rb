cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2206"
  sha256 arm:   "8b327825d6ce9c20b3768c93cffec7aaba51dc122785ebcfbd6af55f07132592",
         intel: "a2264f9c091f1aac77ab8c05cf5718b9fdf05a00ff625726501740ea91a32a4e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
