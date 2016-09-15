"""
Construct the parity matrices specified for the LDPC codes in CCSDS 131.0-B-2,
then use them to construct the corresponding generator matrix, and then compute
the packed circulant form for compact inclusion in firmware.
"""

import numpy as np

theta_k = [3, 0, 1, 2, 2, 3, 0, 1, 0, 1, 2, 0, 2,
           3, 0, 1, 2, 0, 1, 2, 0, 1, 2, 1, 2, 3]

phi_j_m_k = {
    0:
        {
            128: [1, 22, 0, 26, 0, 10, 5, 18, 3, 22, 3, 8, 25, 25, 2, 27, 7, 7,
                  15, 10, 4, 19, 7, 9, 26, 17],
            256: [59, 18, 52, 23, 11, 7, 22, 25, 27, 30, 43, 14, 46, 62, 44,
                  12, 38, 47, 1, 52, 61, 10, 55, 7, 12, 2],
            512: [16, 103, 105, 0, 50, 29, 115, 30, 92, 78, 70, 66, 39, 84, 79,
                  70, 29, 32, 45, 113, 86, 1, 42, 118, 33, 126],
            1024: [160, 241, 185, 251, 209, 103, 90, 184, 248, 12, 111, 66,
                   173, 42, 157, 174, 104, 144, 43, 181, 250, 202, 68, 177,
                   170, 89],
            2048: [108, 126, 238, 481, 96, 28, 59, 225, 323, 28, 386, 305, 34,
                   510, 147, 199, 347, 391, 165, 414, 97, 158, 86, 168, 506,
                   489],
            4096: [226, 618, 404, 32, 912, 950, 534, 63, 971, 304, 409, 708,
                   719, 176, 743, 759, 674, 958, 984, 11, 413, 925, 687, 752,
                   867, 323],
            8192: [1148, 2032, 249, 1807, 485, 1044, 717, 873, 364, 1926,
                   1241, 1769, 532, 768, 1138, 965, 141, 1527, 505, 1312, 1840,
                   709, 1427, 989, 1925, 270],
        },
    1:
        {
            128: [0, 27, 30, 28, 7, 1, 8, 20, 26, 24, 4, 12, 23, 15, 15, 22,
                  31, 3, 29, 21, 2, 5, 11, 26, 9, 17],
            256: [0, 32, 21, 36, 30, 29, 44, 29, 39, 14, 22, 15, 48, 55, 39,
                  11, 1, 50, 40, 62, 27, 38, 40, 15, 11, 18],
            512: [0, 53, 74, 45, 47, 0, 59, 102, 25, 3, 88, 65, 62, 68, 91,
                  70, 115, 31, 121, 45, 56, 54, 108, 14, 30, 116],
            1024: [0, 182, 249, 65, 70, 141, 237, 77, 55, 12, 227, 42, 52,
                   243, 179, 250, 247, 164, 17, 31, 149, 105, 183, 153, 177,
                   19],
            2048: [0, 375, 436, 350, 260, 84, 318, 382, 169, 213, 67, 313,
                   242, 188, 1, 306, 397, 80, 33, 7, 447, 336, 424, 134, 152,
                   492],
            4096: [0, 767, 227, 247, 284, 370, 482, 273, 886, 634, 762, 184,
                   696, 413, 854, 544, 864, 82, 1009, 437, 36, 562, 816, 452,
                   290, 778],
            8192: [0, 1822, 203, 882, 1989, 957, 1705, 1083, 1072, 354, 1942,
                   446, 1456, 1940, 1660, 1661, 587, 708, 1466, 433, 1345, 867,
                   1551, 2041, 1383, 1790],
        },
    2:
        {
            128: [0, 12, 30, 18, 10, 16, 13, 9, 7, 15, 16, 18, 4, 23, 5, 3,
                  29, 11, 4, 8, 2, 11, 11, 3, 15, 13],
            256: [0, 46, 45, 27, 48, 37, 41, 13, 9, 49, 36, 10, 11, 18, 54,
                  40, 27, 35, 25, 46, 24, 33, 18, 37, 35, 21],
            512: [0, 8, 119, 89, 31, 122, 1, 69, 92, 47, 11, 31, 19, 66, 49,
                  81, 96, 38, 83, 42, 58, 24, 25, 92, 38, 120],
            1024: [0, 35, 167, 214, 84, 206, 122, 67, 147, 54, 23, 93, 20,
                   197, 46, 162, 101, 76, 78, 253, 124, 143, 63, 41, 214, 70],
            2048: [0, 219, 16, 263, 415, 403, 184, 279, 198, 307, 432, 240,
                   454, 294, 479, 289, 373, 104, 141, 270, 439, 333, 399, 14,
                   277, 412],
            4096: [0, 254, 790, 642, 248, 899, 328, 518, 477, 404, 698, 160,
                   497, 100, 518, 92, 464, 592, 198, 856, 235, 134, 542, 545,
                   777, 483],
            8192: [0, 318, 494, 1467, 757, 1085, 1630, 64, 689, 1300, 148,
                   777, 1431, 659, 352, 1177, 836, 1572, 348, 1040, 779, 476,
                   191, 1393, 1752, 1627],
        },
    3:
        {
            128: [0, 13, 19, 14, 15, 20, 17, 4, 4, 11, 17, 20, 8, 22, 19, 15,
                  5, 21, 17, 9, 20, 18, 31, 13, 2, 18],
            256: [0, 44, 51, 12, 15, 12, 4, 7, 2, 30, 53, 23, 29, 37, 42, 48,
                  4, 10, 18, 56, 9, 11, 23, 8, 7, 24],
            512: [0, 35, 97, 112, 64, 93, 99, 94, 103, 91, 3, 6, 39, 113, 92,
                  119, 74, 73, 116, 31, 127, 98, 23, 38, 18, 62],
            1024: [0, 162, 7, 31, 164, 11, 237, 125, 133, 99, 105, 17, 97, 91,
                   211, 128, 82, 115, 248, 62, 26, 140, 121, 12, 41, 249],
            2048: [0, 312, 503, 388, 48, 7, 185, 328, 254, 202, 285, 11, 168,
                   127, 8, 437, 475, 85, 419, 459, 468, 209, 311, 211, 510,
                   320],
            4096: [0, 285, 554, 809, 185, 49, 101, 82, 898, 627, 154, 65, 81,
                   823, 50, 413, 462, 175, 715, 537, 722, 37, 488, 179, 430,
                   264],
            8192: [0, 1189, 458, 460, 1039, 1000, 1265, 1223, 874, 1292, 1491,
                   631, 464, 461, 844, 392, 922, 256, 1986, 19, 266, 471, 1166,
                   1300, 1033, 1606],
        },
}

m_k_r = {
    1024: {"1/2": 512, "2/3": 256, "4/5": 128},
    4096: {"1/2": 2048, "2/3": 1024, "4/5": 512},
    16384: {"1/2": 8192, "2/3": 4096, "4/5": 2048},
}

n_k_r = {
    1024: {"1/2": 2048, "2/3": 1536, "4/5": 1280},
    4096: {"1/2": 8192, "2/3": 6144, "4/5": 5120},
    16384: {"1/2": 32768, "2/3": 24576, "4/5": 20480},
}


def z(m):
    return np.zeros((m, m), dtype=np.uint32)


def i(m):
    return np.eye(m, dtype=np.uint32)


def p(m, k):
    x = z(m)
    for i in range(m):
        pi_a = (m//4)*((theta_k[k-1] + ((4*i)//m)) % 4)
        pi_b = (phi_j_m_k[(4*i)//m][m][k-1] + i) % (m//4)
        x[i, pi_a + pi_b] = 1
    return x


def h12(m):
    return np.vstack((
        np.hstack((z(m), z(m), i(m), z(m), i(m) + p(m, 1))),
        np.hstack((i(m), i(m), z(m), i(m), p(m, 2) + p(m, 3) + p(m, 4))),
        np.hstack((i(m), p(m, 5) + p(m, 6), z(m), p(m, 7) + p(m, 8), i(m)))
    )) % 2


def h23(m):
    return np.hstack((
        np.vstack((
            np.hstack((z(m), z(m))),
            np.hstack((p(m, 9) + p(m, 10) + p(m, 11), i(m))),
            np.hstack((i(m), p(m, 12) + p(m, 13) + p(m, 14))),
        )), h12(m))) % 2


def h45(m):
    return np.hstack((
        np.vstack((
            np.hstack((z(m), z(m), z(m), z(m))),
            np.hstack((p(m, 21) + p(m, 22) + p(m, 23), i(m),
                       p(m, 15) + p(m, 16) + p(m, 17), i(m))),
            np.hstack((i(m), p(m, 24) + p(m, 25) + p(m, 26),
                       i(m), p(m, 18) + p(m, 19) + p(m, 20))),
        )), h23(m))) % 2


def invmod2(a):
    n = a.shape[0]

    # Form [a | i], so that after elimination we'll have [i | a^-1]
    ai = np.hstack((a.astype(np.uint8), np.eye(n, dtype=np.uint8)))

    # For each row, eliminate any other rows with the same pivot
    for i in range(n):
        pivot = np.nonzero(ai[i])[0][0]
        for j in range(n):
            if i != j and ai[j][pivot]:
                ai[j] += ai[i]
                ai[j] %= 2

    # For each row, if not in the correct position, swap with the row that
    # should be there instead
    for i in range(n):
        if ai[i][i]:
            continue
        for j in range(n):
            if i != j and ai[j][i]:
                ai[[i, j]] = ai[[j, i]]

    return ai[:, n:]


def g(r, k):
    m = m_k_r[k][r]
    h = {"1/2": h12, "2/3": h23, "4/5": h45}[r](m)
    bigk = {"1/2": 2, "2/3": 4, "4/5": 8}[r]
    p = h[:, -3*m:]
    q = h[:, :m*bigk]
    ip = invmod2(p)
    w = np.dot(ip, q).astype(np.uint32).T % 2
    g = np.hstack((i(m*bigk), w))[:, :-m]
    return g, h


def compute_gs():
    from datetime import datetime
    for k in (1024, 4096, 16384):
        for r in ("1/2", "2/3", "4/5"):
            print(datetime.now().isoformat())
            print("Computing G for k={} r={}".format(k, r))
            gg, hh = g(r, k)
            np.savez("ldpc_k{}_r{}.npz".format(k, r.replace("/", "")),
                     g=gg, h=hh)


def g_to_consts(gg):
    k, n = gg.shape
    p = gg[:, k:]
    print(p.shape)
    bs = p.shape[1] // 8
    nrows = p.shape[0] // bs
    rows = np.arange(0, nrows*bs, bs)
    consts = []
    for row in rows:
        bits = np.packbits(p[row])
        words = np.split(bits, p.shape[1] // 32)
        for word in words:
            consts.append("".join("{:02X}".format(byte) for byte in word))
    print(", ".join("0x{}".format(const) for const in consts))


def h_to_sparse(hh):
    check_idxs = []
    check_starts = []
    check_ends = []
    data_idxs = []
    data_starts = []
    data_ends = []
    for i in range(hh.shape[0]):
        check_starts.append(len(check_idxs))
        for j in range(hh.shape[1]):
            if hh[i][j]:
                check_idxs.append(j)
        check_ends.append(len(check_idxs))
    for j in range(hh.shape[1]):
        data_starts.append(len(data_idxs))
        for i in range(hh.shape[0]):
            if hh[i][j]:
                data_idxs.append(i)
        data_ends.append(len(data_idxs))
    return (
        check_idxs, check_starts, check_ends,
        data_idxs, data_starts, data_ends)


if __name__ == "__main__":
    # from scipy.misc import imsave
    # tx = np.unpackbits(np.arange(128).astype(np.uint8)).reshape((1, -1))
    for r in ("12", "23", "45"):
        with np.load("ldpc_k1024_r{}.npz".format(r)) as data:
            gg = data['g']
            hh = data['h']
        print("Rate {}/{}".format(r[0], r[1]))
        # imsave("g_k1024_r{}.png".format(r), gg)
        # imsave("h_k1024_r{}.png".format(r), hh)
        # g_to_consts(gg)
        # codeword = np.packbits(np.dot(tx, gg) % 2)
        # print(" ".join("{:02X}".format(c) for c in codeword))
        ci, cs, ce, di, ds, de = h_to_sparse(hh)
        print("len(ci):", len(ci))
        print("len(cs):", len(cs))
        print("len(ce):", len(ce))
        print("len(di):", len(di))
        print("len(ds):", len(ds))
        print("len(de):", len(de))
        print("sum(hh):", np.sum(hh))
        print("shape(hh):", hh.shape)
        print()
