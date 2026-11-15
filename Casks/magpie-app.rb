cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4250"
  sha256 arm:   "e9fefec091906cd61ec7a2f7371c1721115e0570119c028bb56e80513a879cd4",
         intel: "4b792a24c2f2ee92d55e39c78dd86b36fe5fb170cc2159cc519aee94079a053c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
