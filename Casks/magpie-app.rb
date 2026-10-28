cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1893"
  sha256 arm:   "6aecd087411f6f5355965ed2d9490fce4c7a3e302a174ca58c673c986ebaf35a",
         intel: "65a8e391788669d72504438458a88a799bd8380b7e04d32a9d1f7b60baeabf84"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
