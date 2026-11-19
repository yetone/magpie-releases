cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4512"
  sha256 arm:   "24e6749dd33694a5ad5b9efa288315784ac2141047386cba973a846456720230",
         intel: "36ff507b17429ee02788e7cf375c3fbe206f3eb7640c204b81cf9e3d695c6d21"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
