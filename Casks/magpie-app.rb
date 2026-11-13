cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4048"
  sha256 arm:   "6dacb88adeb9c338a511bf13364f4a9cef92066fc33230c1c9916f3a8bf39067",
         intel: "dfdc40ae21be8f7ad017a39eea6d005c8304d3cac681170fb86e43bc3a432391"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
