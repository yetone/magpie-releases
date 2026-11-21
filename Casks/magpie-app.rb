cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4655"
  sha256 arm:   "0eedcbe3cfa7f2208a953a08831b9ce4558d6f7b7403f54eef39c6c16b17fb86",
         intel: "8a0e4e2300175b270344c181e59cbd157ea33b51e42a14f3d9b33068d283bb5a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
