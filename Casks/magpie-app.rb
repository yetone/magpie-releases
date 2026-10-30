cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2168"
  sha256 arm:   "3d54c290072a025505eb9280c8743925deb35956a58efd362d2e820ef83a39b8",
         intel: "a0aee962ec7e4067563d2b1fd3e7be22e0784f29b2284194df5c3c81fe57a565"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
