cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2719"
  sha256 arm:   "c406d5b031c8f6a87147db36a567e03032e2b62316f2a417f287f759b190f158",
         intel: "2ffe8c7c2650113629a349b7d10985b91b91bd6fef837f095fa3a249c94d6384"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
