cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4415"
  sha256 arm:   "afc0b7b3fb536c2681fa69a7460091c713d4bb758c7d26cefe5fe1c12e1242ee",
         intel: "863001f865eebea1a5a8046e751f89134a98e22c15a0aa93853149ed590159c7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
