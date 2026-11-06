cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3196"
  sha256 arm:   "c2fac529c0287fca65f221f8d5f4bbb4a7e69fe5559919a96c2c8bdce4df229b",
         intel: "34e550fe70ba057dbf4f7f5f4517bda258b252fedb3b18c09c034af4e8d2c327"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
