cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4040"
  sha256 arm:   "df0fc062c4b368140366e29f524b93ee4ab5805253359d47f9d14dae24260ec6",
         intel: "2e1209a9fee4c576dc07254082dcefadca0f0baa994954f670bc146958c6a749"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
