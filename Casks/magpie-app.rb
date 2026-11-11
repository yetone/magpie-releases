cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3660"
  sha256 arm:   "3a258e4eb10730590f1e4781323e5afad0684fc53fea367b874a9d5ca7d0655e",
         intel: "10ff59dedf121fc103502432215f63fed978a8a6e6b9d21b9c78bdb49a39dbfd"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
