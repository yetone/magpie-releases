cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3424"
  sha256 arm:   "c76239d439094d293e773939810e29478a6485071280a2f4cae889ccc6e8b380",
         intel: "150a12f99278b307a9cb3799c9d0d64d15c5bc639400b6921d5abb090d2aa261"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
