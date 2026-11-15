cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4260"
  sha256 arm:   "167ec33d1eb20d1a8c28c932d652899d16ff7378a6b25e3d3a4823ff0ad8c0e4",
         intel: "cfd1b9818bfdf35bfa161e22b9d43e6fdd622f9ce505eb3a03a9e492921a802e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
