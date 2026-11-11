cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3666"
  sha256 arm:   "a0de5ccd267f3087f00ae90c78c3a9905e8a3d37c10bedd427c73fe1cfdb7654",
         intel: "98fe18556a6618fa98ca667aa47f12d5a2087bc70798b7138c900b0c23c6f24e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
