cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2290"
  sha256 arm:   "c26df6212b351f854b18e49ceed9a08c710e855e158a65c9bc8f24de746da09d",
         intel: "ffa9fe26cb40c84dae9626c906bd297bfdf0d12f593a223730e6d1c39f727117"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
