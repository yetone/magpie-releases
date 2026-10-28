cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1932"
  sha256 arm:   "6faf4668986afa92521162fa44ec70c8952176bca680187c624cb5025e80ab86",
         intel: "715f904ae05f125725b612355d3c9d44194bfa7f998e2432e721ae55780ad17f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
