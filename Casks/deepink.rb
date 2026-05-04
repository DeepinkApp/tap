# Documentation: https://docs.brew.sh/Cask-Cookbook
#                https://docs.brew.sh/Adding-Software-to-Homebrew#cask-stanzas
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
cask "deepink" do
  version "0.1.3"
  sha256 "57c3e9bc83e28787668f3848365feae06b37c2b05a9059bda651de711b177826"

  url "https://github.com/DeepinkApp/deepink/releases/download/v#{version}/deepink-darwin-arm64-#{version}.zip",
    verified: "github.com/DeepinkApp/deepink"
  name "deepink"
  desc "A better place for your notes."
  homepage "https://deepink.app/"

  # Documentation: https://docs.brew.sh/Brew-Livecheck
  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"
  depends_on arch: :arm64

  app "Deepink.app"

  # Documentation: https://docs.brew.sh/Cask-Cookbook#stanza-zap
  # zap trash: []
end
