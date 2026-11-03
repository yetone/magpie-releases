cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2790"
  sha256 arm:   "79ff3a533b45c46a1a9bcd8298d03eebf77970a2b901acd716e272f8af715f8e",
         intel: "f38ecd7f6007304164ea750e474163f3cf75507cde2b6dfe7f9f5448ae518585"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
