cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2624"
  sha256 arm:   "d77ffe13ce887ba959ff415be893b3e5fc36bc76838ef6520a09d2450e7cbe88",
         intel: "e3607fea4e1b6d3985619dbe6cab1527d4e4132aef35376b21cb4fe92fd638eb"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
